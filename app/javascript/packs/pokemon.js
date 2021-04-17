

let failedCapture = ["The ball missed the Pokemon completely! <br />Did you even aim before throwing?", "The Pokemon broke free!", "Welp, you didn't capture it this time, try again?", "Wow, you literally dropped the ball!?", "The Pokemon CAUGHT the Ball!? <br />You better try again. This one's smart.", "Oh no! The Pokemon broke free! <br />Throw another Pokeball or search for another Pokemon."]

document.getElementById("throwpokeball").addEventListener("click", throwBall);

document.addEventListener("click", getPokeballValue);

function getPokeballValue() {
  let radioValue = document.querySelector('input[name="pokeball"]:checked').value;
  console.log(radioValue);
  return radioValue;
  //console.log("test")
}

function captureFailed() {
  let failmessage = failedCapture[Math.floor(Math.random() * (failedCapture.length - 1))];
    document.getElementById("failedcapture").innerHTML = failmessage;
    document.getElementById("throwpokeball").style.visibility="visible";
    document.getElementById("failedcapture").style.visibility="visible";
    document.getElementById("captureform").style.visibility="hidden";
}

function captureSucceed() {
  document.getElementById("throwpokeball").style.visibility="hidden";
  document.getElementById("failedcapture").style.visibility="hidden";
  document.getElementById("hidden-container-fix").style.visibility="visible";
  document.getElementById("captureform").style.visibility="visible";
  document.getElementById("keep_button_from_sliding").style.justifyContent="flex-end";
}

let difficulty = parseInt(document.getElementById("poke-id").textContent) / 2;

function capturePokemon(modifier) {
  let randomnumber = Math.floor(Math.random() * Math.floor(difficulty * parseFloat(modifier)));
  console.log(randomnumber);
  if (randomnumber == 0) {
    console.log('success')
    captureSucceed();
  } else {
    console.log('failure')
    captureFailed();
  }
}


function throwBall() {
  pokeball = getPokeballValue();
  //console.log(pokeball);
  if (pokeball == 4) { //masterball should always land
    captureSucceed()
  } else if (pokeball == 5 || pokeball == 6) { // safari or park 1k
    capturePokemon('.2')
  } else if (pokeball == 1 ) { // ultra ball 800
    capturePokemon('.4')
  } else if (pokeball == 2 ) { // great ball 600
    capturePokemon('.6')
  } else if (pokeball == 7 ) { // sport ball 300
    capturePokemon('.8')
  } else if (pokeball == 3 ) { //pokeball 200
    capturePokemon('1')
  }
}

