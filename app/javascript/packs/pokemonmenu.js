const menuButton = document.getElementById("pokemon_manager_mobile");
const navLinks = document.getElementById("pokemon_manager_largescreens");


menuButton.addEventListener('click', () => {
    if (navLinks.style.display == "none" ) {
        navLinks.style.display = "flex"; 
    } else {
        navLinks.style.display = "none"; 
    }
  })
