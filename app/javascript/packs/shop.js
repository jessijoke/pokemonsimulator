document.addEventListener("click", updatePrice);
document.addEventListener("keydown", updatePrice);

let e = document.getElementById("item_id");
let strSel = e.options[e.selectedIndex].value + " and text is: " + e.options[e.selectedIndex].text;



function updatePrice() {
    console.log(strSel);
    document.getElementById("shop-text").innerText = "test";
}