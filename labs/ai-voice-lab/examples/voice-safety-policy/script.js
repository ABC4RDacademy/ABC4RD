const request = document.querySelector("#request");
const result = document.querySelector("#result");
const check = document.querySelector("#check");

const blockedPatterns = [
  /clone .* voice/i,
  /sound like .* celebrity/i,
  /impersonate/i,
  /pretend to be/i,
  /without consent/i,
  /ethnic caricature/i,
  /fake .* statement/i
];

function evaluatePolicy(text) {
  const hits = blockedPatterns.filter(pattern => pattern.test(text));
  if (hits.length) {
    return {
      decision: "blocked",
      reason: "The request may involve impersonation, non-consensual cloning, or unsafe identity use.",
      safeAlternative: "Use a generic educational voice profile with language, pace, tone, and accessibility settings."
    };
  }
  return {
    decision: "allowed",
    reason: "The request describes language/tone for educational use without cloning or impersonation.",
    safeAlternative: "Proceed with a generic voice profile and disclose synthetic audio if published."
  };
}

function render() {
  const output = evaluatePolicy(request.value);
  result.className = output.decision === "allowed" ? "allow" : "block";
  result.innerHTML = `
    <h2>${output.decision.toUpperCase()}</h2>
    <p><strong>Reason:</strong> ${output.reason}</p>
    <p><strong>Safe alternative:</strong> ${output.safeAlternative}</p>
  `;
}

check.addEventListener("click", render);
render();

