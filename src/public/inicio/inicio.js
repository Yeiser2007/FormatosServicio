   const elemento = document.getElementById("navbar");
   const navbar = document.getElementById("navbarNavDropdown")

   document.getElementById("menu").addEventListener("click", function () {
  
    const menuIcon = document.getElementById("menuIcon");
     if (menuIcon.classList.contains("bi-list")) {
        menuIcon.classList.remove("bi-list");
        menuIcon.classList.add("bi-x");
        navbar.style.backgroundColor="#fff"
    } 
    else{
        menuIcon.classList.remove("bi-x");
        menuIcon.classList.add("bi-list");
    }
});