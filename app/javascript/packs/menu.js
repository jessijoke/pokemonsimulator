const menuButton = document.getElementById("menu_icon");
const navBarLinks = document.getElementById("nav_for_large_screens");
//const navBarLinks = document.getElementsByClassName('wrapper')[0];
//const acctButtons = document.getElementsByClassName('account_buttons')[0];

menuButton.addEventListener('click', () => {
    navBarLinks.classList.toggle('active');
    //acctButtons.classList.toggle('active');
  })
