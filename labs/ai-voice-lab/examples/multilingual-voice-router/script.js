const language = document.querySelector("#language");
const tone = document.querySelector("#tone");
const text = document.querySelector("#text");
const profile = document.querySelector("#profile");
const speak = document.querySelector("#speak");

function buildProfile() {
  const toneMap = {
    clear: { rate: 1, pitch: 1, style: "neutral educator" },
    warm: { rate: 0.95, pitch: 1.05, style: "warm mentor" },
    formal: { rate: 0.92, pitch: 0.95, style: "formal lecturer" },
    slow: { rate: 0.78, pitch: 1, style: "slow beginner mode" }
  };
  return {
    language: language.value,
    tone: tone.value,
    style: toneMap[tone.value].style,
    rate: toneMap[tone.value].rate,
    pitch: toneMap[tone.value].pitch,
    policy: "No impersonation. No non-consensual cloning. Educational voice only."
  };
}

function renderProfile() {
  profile.textContent = JSON.stringify(buildProfile(), null, 2);
}

function speakText() {
  const p = buildProfile();
  renderProfile();
  if (!("speechSynthesis" in window)) return;
  window.speechSynthesis.cancel();
  const utterance = new SpeechSynthesisUtterance(text.value);
  utterance.lang = p.language;
  utterance.rate = p.rate;
  utterance.pitch = p.pitch;
  const voices = window.speechSynthesis.getVoices();
  utterance.voice = voices.find(v => v.lang === p.language) || voices.find(v => v.lang.startsWith(p.language.split("-")[0])) || null;
  window.speechSynthesis.speak(utterance);
}

language.addEventListener("change", renderProfile);
tone.addEventListener("change", renderProfile);
speak.addEventListener("click", speakText);
renderProfile();

