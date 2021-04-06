let failedCapture = ["The ball missed the Pokemon completely! <br />Did you even aim before throwing?", "The Pokemon broke free!", "Welp, you didn't capture it this time, try again?", "Wow, you literally dropped the ball!?", "The Pokemon CAUGHT the Ball!? I didn't even know they could do that. <br />You better try again. This one's smart.", "Oh no! The Pokemon broke free! <br />Throw another Pokeball or search for another Pokemon."]

document.getElementById("throwpokeball").addEventListener("click", throwBall);

function throwBall() {
  if (Math.floor(Math.random() * 5) == 0) {
    document.getElementById("throwpokeball").style.display="none";
    document.getElementById("failedcapture").style.display="none";
    document.getElementById("captureform").style.display="block";
  } else {
    let failmessage = failedCapture[Math.floor(Math.random() * failedCapture.length - 1)];
    document.getElementById("failedcapture").innerHTML = failmessage;
    document.getElementById("throwpokeball").style.display="block";
    document.getElementById("failedcapture").style.display="block";
    document.getElementById("captureform").style.display="none";
  }
}

