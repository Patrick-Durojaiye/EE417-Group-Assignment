//Simply making a constant variable to store the form/email/subject/name/dropdown - the features we want to extract
//stored through getting the element by id as the id was declared in a div or the form input
//anything can be retrieved by simply assigning an id in the html
var menu = document.getElementById('navbar--middle');
var hamburger = document.getElementById('hamburger');
var lth = document.getElementById('lth');


//CSS property changed to none so not displaying intitially
menu.style.display = "none";

//event listener of click added to the hamburger menu
//class of change is toggled
//menu css property of display is changed
//if its the display is none, then content will be displayed on click
//if not, then there will be no content displayed
hamburger.addEventListener('click', function () {
    this.classList.toggle("change");
    if (menu.style.display === "none") {
        menu.style.display = "block";
        // lth.style.display = "none";
    } else {
        menu.style.display = "none";
        //   lth.style.display = "block";
    }
})


//Get the button
var mybutton = document.getElementById("myBtn");


// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

//get the drop down
const dropdownBg = document.querySelector(".dropdown");

//for checker div, event on mouse over
//on mouse hover, the drop down gets translated, opacity becomes 1
//it becomes visible
//when mouse is not on it, it simply hides the drop down
Array.from(document.querySelectorAll(".checker")).forEach(item => {
    item.onmouseover = () => {

        dropdownBg.style.transform = "translateX(0)";
        dropdownBg.style.opacity = 1;
        dropdownBg.style.visibility = "visible";
    };

    item.onmouseout = () => {
        dropdownBg.style.opacity = 0;
        dropdownBg.style.visibility = "hidden";
    };
});


//on mouse over, image becomes big//normal img
//on mouse out, normal image
//using html based event listener, check index img src logo
function bigImg(x) {
    x.style.width = "180px";
}

function normalImg(x) {
    x.style.width = "150px";
}
