#!/usr/bin/env python3
"""Build a weekly delta markdown draft from a baseline snapshot and a ranking CSV."""

from __future__ import annotations

import argparse
import csv
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Tuple


@dataclass
class BaselineRow:
    entity: str
    rank: int
    total: int
    baseline_date: str


@dataclass
class CurrentRow:
    entity: str
    rank: int
    total: int
    signal_url: str


@dataclass
class MovementRow:
    entity: str
    previous_rank: int
    current_rank: int
    rank_change: int
    previous_total: int
    current_total: int
    total_change: int
    signal_url: str


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Generate a weekly delta markdown draft for an ABC4RD ranking direction."
    )
    parser.add_argument("--direction", required=True, help="Direction key, for example protocols.")
    parser.add_argument("--baseline", required=True, help="Path to weekly-delta-baseline CSV.")
    parser.add_argument("--current", required=True, help="Path to current ranking CSV.")
    parser.add_argument("--current-date", required=True, help="Current publication date in YYYY-MM-DD.")
    parser.add_argument(
        "--previous-date",
        help="Previous publication date in YYYY-MM-DD. Defaults to the baseline date for the direction.",
    )
    parser.add_argument(
        "--title",
        help="Human-readable title for the direction. Defaults to the direction key.",
    )
    parser.add_argument(
        "--status",
        default="draft",
        help="Document status label. Default: draft.",
    )
    parser.add_argument(
        "--output",
        help="Optional output file path. If omitted, markdown is printed to stdout.",
    )
    return parser.parse_args()


def read_baseline(path: Path, direction: str) -> Dict[str, BaselineRow]:
    rows: Dict[str, BaselineRow] = {}
    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.DictReader(handle)
        for raw in reader:
            if raw.get("direction") != direction:
                continue
            entity = raw["entity"].strip()
            rows[entity] = BaselineRow(
                entity=entity,
                rank=int(raw["rank"]),
                total=int(raw["total"]),
                baseline_date=raw["baseline_date"].strip(),
            )
    if not rows:
        raise ValueError(f"No baseline rows found for direction: {direction}")
    return rows


def read_current(path: Path) -> Dict[str, CurrentRow]:
    rows: Dict[str, CurrentRow] = {}
    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.DictReader(handle)
        required = {"entity", "rank", "total"}
        missing = required - set(reader.fieldnames or [])
        if missing:
            raise ValueError(f"Current ranking CSV is missing columns: {', '.join(sorted(missing))}")
        for raw in reader:
            rank_value = (raw.get("rank") or "").strip()
            total_value = (raw.get("total") or "").strip()
            entity = (raw.get("entity") or "").strip()
            if not entity or not rank_value.isdigit() or not total_value.isdigit():
                continue
            rows[entity] = CurrentRow(
                entity=entity,
                rank=int(rank_value),
                total=int(total_value),
                signal_url=(raw.get("official_signal_url") or "").strip(),
            )
    if not rows:
        raise ValueError(f"No current ranking rows found in: {path}")
    return rows


def build_movements(
    previous_rows: Dict[str, BaselineRow],
    current_rows: Dict[str, CurrentRow],
) -> Tuple[List[CurrentRow], List[BaselineRow], List[MovementRow]]:
    new_entrants = sorted(
        (row for entity, row in current_rows.items() if entity not in previous_rows),
        key=lambda row: row.rank,
    )
    exits = sorted(
        (row for entity, row in previous_rows.items() if entity not in current_rows),
        key=lambda row: row.rank,
    )
    movement_rows: List[MovementRow] = []
    for entity, current in current_rows.items():
        previous = previous_rows.get(entity)
        if previous is None:
            continue
        movement_rows.append(
            MovementRow(
                entity=entity,
                previous_rank=previous.rank,
                current_rank=current.rank,
                rank_change=previous.rank - current.rank,
                previous_total=previous.total,
                current_total=current.total,
                total_change=current.total - previous.total,
                signal_url=current.signal_url,
            )
        )
    movement_rows.sort(key=lambda row: (row.current_rank, row.entity.lower()))
    return new_entrants, exits, movement_rows


def format_signed(value: int) -> str:
    if value > 0:
        return f"+{value}"
    return str(value)


def pick_largest_upward(rows: Iterable[MovementRow]) -> Optional[MovementRow]:
    candidates = [row for row in rows if row.rank_change > 0]
    if not candidates:
        return None
    return sorted(candidates, key=lambda row: (-row.rank_change, row.current_rank, row.entity.lower()))[0]


def pick_largest_downward(rows: Iterable[MovementRow]) -> Optional[MovementRow]:
    candidates = [row for row in rows if row.rank_change < 0]
    if not candidates:
        return None
    return sorted(candidates, key=lambda row: (row.rank_change, row.current_rank, row.entity.lower()))[0]


def pick_highest_total_gain(rows: Iterable[MovementRow]) -> Optional[MovementRow]:
    candidates = [row for row in rows if row.total_change > 0]
    if not candidates:
        return None
    return sorted(candidates, key=lambda row: (-row.total_change, row.current_rank, row.entity.lower()))[0]


def render_entity_list(rows: Iterable[CurrentRow | BaselineRow]) -> str:
    labels = [f"{row.entity} (#{row.rank})" for row in rows]
    return ", ".join(labels) if labels else "None"


def render_signal_bullets(rows: List[MovementRow]) -> List[str]:
    bullets: List[str] = []
    seen = set()
    for row in rows:
        if row.signal_url and row.signal_url not in seen:
            bullets.append(f"- {row.entity}: {row.signal_url}")
            seen.add(row.signal_url)
        if len(bullets) == 3:
            break
    while len(bullets) < 3:
        bullets.append("- Fill after current official-source review")
    return bullets


def render_markdown(
    *,
    direction: str,
    title: str,
    status: str,
    previous_date: str,
    current_date: str,
    new_entrants: List[CurrentRow],
    exits: List[BaselineRow],
    movements: List[MovementRow],
) -> str:
    largest_upward = pick_largest_upward(movements)
    largest_downward = pick_largest_downward(movements)
    highest_gain = pick_highest_total_gain(movements)
    signal_bullets = render_signal_bullets(movements)

    movement_lines = []
    if movements:
        for row in movements:
            movement_lines.append(
                f"| {row.entity} | {row.previous_rank} | {row.current_rank} | "
                f"{format_signed(row.rank_change)} | {row.previous_total} | {row.current_total} | "
                f"{format_signed(row.total_change)} |"
            )
    else:
        movement_lines.append("| No overlapping entities | - | - | 0 | - | - | 0 |")

    largest_upward_text = (
        f"{largest_upward.entity} ({format_signed(largest_upward.rank_change)} positions)"
        if largest_upward
        else "None"
    )
    largest_downward_text = (
        f"{largest_downward.entity} ({format_signed(largest_downward.rank_change)} positions)"
        if largest_downward
        else "None"
    )
    highest_gain_text = (
        f"{highest_gain.entity} ({format_signed(highest_gain.total_change)} points)"
        if highest_gain
        else "None"
    )

    return "\n".join(
        [
            "# Weekly Delta Note",
            "",
            f"Date: {current_date}",
            "",
            f"Status: `{status}`",
            "",
            "## Direction",
            "",
            f"Name: `{direction}`",
            "",
            f"Public title: `{title}`",
            "",
            "## Comparison Window",
            "",
            f"- Previous published baseline: `{previous_date}`",
            f"- Current published cycle: `{current_date}`",
            "",
            "## Delta Summary",
            "",
            f"- New entrants: {render_entity_list(new_entrants)}",
            f"- Exits: {render_entity_list(exits)}",
            f"- Largest upward move: {largest_upward_text}",
            f"- Largest downward move: {largest_downward_text}",
            f"- Highest momentum gain: {highest_gain_text}",
            "",
            "## Movement Table",
            "",
            "| Entity | Previous rank | Current rank | Rank change | Previous total | Current total | Total change |",
            "| --- | --- | --- | --- | --- | --- | --- |",
            *movement_lines,
            "",
            "## Why The Ranking Changed",
            "",
            *signal_bullets,
            "",
            "## Safety Note",
            "",
            "- movement claims require two real dated source-backed weekly snapshots",
            "- no endorsement implied",
            "- no partnership implied",
            "- official sources only",
            "",
        ]
    )


def main() -> int:
    args = parse_args()
    baseline_path = Path(args.baseline)
    current_path = Path(args.current)

    baseline_rows = read_baseline(baseline_path, args.direction)
    current_rows = read_current(current_path)
    new_entrants, exits, movements = build_movements(baseline_rows, current_rows)

    previous_date = args.previous_date or next(iter(baseline_rows.values())).baseline_date
    title = args.title or args.direction

    markdown = render_markdown(
        direction=args.direction,
        title=title,
        status=args.status,
        previous_date=previous_date,
        current_date=args.current_date,
        new_entrants=new_entrants,
        exits=exits,
        movements=movements,
    )

    if args.output:
        output_path = Path(args.output)
        output_path.parent.mkdir(parents=True, exist_ok=True)
        output_path.write_text(markdown, encoding="utf-8")
    else:
        print(markdown)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
