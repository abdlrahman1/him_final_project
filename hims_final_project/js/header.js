
let menu = document.getElementById("menu");
let menu_bar = document.getElementById("menu-bar");
let black= document.querySelector(".black");
let scroll_btn = document.querySelector(".scroll-btn");

function toogle(){
  document.querySelector(".menu-bar").classList.toggle("navbar--open");
    if(menu.style.opacity = "1"){
        black.style.display = "block";
    }
    else{
        black.style.display = "none";
    }
    window.onclick = function(event) {
  if (event.target == black) {
    black.style.display = "none";
    document.querySelector(".menu-bar").classList.toggle("navbar--open");
  }
}
}


window.onscroll= function(){

    if(this.scrollY>=1000){
        scroll_btn.classList.add("show-btn");
    }
    else{
        scroll_btn.classList.remove("show-btn");
    }
}
scroll_btn.onclick = function(){

    window.scrollTo({

top:0,
behavior:"smooth",
});
}