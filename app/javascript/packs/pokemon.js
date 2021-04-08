let failedCapture = ["The ball missed the Pokemon completely! <br />Did you even aim before throwing?", "The Pokemon broke free!", "Welp, you didn't capture it this time, try again?", "Wow, you literally dropped the ball!?", "The Pokemon CAUGHT the Ball!? <br />You better try again. This one's smart.", "Oh no! The Pokemon broke free! <br />Throw another Pokeball or search for another Pokemon."]

document.getElementById("throwpokeball").addEventListener("click", throwBall);

let difficulty = parseInt(document.getElementById("poke-id").textContent);
console.log(difficulty);

function throwBall() {
  if (Math.floor(Math.random() * (difficulty/2)) == 0) {
    document.getElementById("throwpokeball").style.display="none";
    document.getElementById("failedcapture").style.display="none";
    document.getElementById("captureform").style.display="block";
    document.getElementById("keep_button_from_sliding").style.justifyContent="flex-end";
  } else {
    let failmessage = failedCapture[Math.floor(Math.random() * (failedCapture.length - 1))];
    document.getElementById("failedcapture").innerHTML = failmessage;
    document.getElementById("throwpokeball").style.display="block";
    document.getElementById("failedcapture").style.display="block";
    document.getElementById("captureform").style.display="none";
  }
}

