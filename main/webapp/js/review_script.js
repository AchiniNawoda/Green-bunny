const wrapper = document.querySelector(".wrapper");
const carousel = document.querySelector(".carousel");
const arrowBtns = document.querySelectorAll(".wrapper i");
const firstCardWidth = carousel.querySelector(".card").offsetWidth;

let isDragging = false, starX, starScrollLeft, timeoutId;

arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel.scrollLeft += btn.id === "left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    carousel.classList.add("dragging");
    starX = e.pageX;
    starScrollLeft = carousel.scrollLeft;
}

const dragging = (e) => {
    if(!isDragging) return;
    carousel.scrollLeft = starScrollLeft - (e.pageX - starX);
}

const dragStop = () => {
    isDragging = false;
    carousel.classList.remove("dragging");
}

const autoPlay = () => {
    if(window.innerWidth < 800) return;
    timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

const infiniteScroll = () => {
    clearTimeout(timeoutId);
    if(!wrapper.matched(":hover")) autoPlay();
}

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
carousel.addEventListener("scroll",infiniteScroll);
wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
wrapper.addEventListener("mouseleave",autoPlay);/**
 * 
 */