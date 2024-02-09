const btnLeft = document.querySelector(".btn-left"),
    btnRight = document.querySelector(".btn-right"),
    slider = document.querySelector("#slider"),
    sliderSection = document.querySelectorAll(".slider-section");

let operacion = 0;
let counter = 0;
let widthImg = 100 / sliderSection.length;

btnLeft.addEventListener("click", moveToLeft);
btnRight.addEventListener("click", moveToRight);

setInterval(() => {
    moveToRight();
}, 3000);

function moveToRight() {
    if (counter >= sliderSection.length - 1) {
        counter = 0;
        operacion = 0;
        slider.style.transform = `translate(-${operacion}%)`;
        slider.style.transition = "none"
        return;
    }
    counter++;
    operacion = counter * widthImg;
    slider.style.transform = `translate(-${operacion}%)`;
    slider.style.transition = "all ease .6s";
}


function moveToLeft() {
    counter--;
    if (counter < 0) {
        counter = sliderSection.length - 1;
        operacion = widthImg * (sliderSection.length - 1)
        console.log(operacion)
        slider.style.transform = `translate(-${operacion}%)`;
        slider.style.transition = "none"
        return;
    } 
        operacion = operacion - widthImg;
        slider.style.transform = `translate(-${operacion}%)`;
        slider.style.transition = "all ease .6s";
    }

