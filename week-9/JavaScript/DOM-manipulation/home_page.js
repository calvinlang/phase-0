// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].
// Add your JavaScript calls to this page:
// Release 0:
document.getElementById("release-0").className = "done";

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
document.getElementById("release-1").style.display = "none";

// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
var change = document.getElementsByClassName("release-4");
for (var i = 0; i < change.length; i++) {
    change[i].style.fontSize = "2em";
}

//Release 6: 
var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));


// What did you learn about the DOM?
// 	DOM stands for Document Object Model. It is the term used to describe putting valid objects
// 	into HTML. In this assignment we learned how to call and change HTML or CSS variables using
// 	javascript objects. These involve changing the appearance or HTML of elements by class, ID,
// 	or tag. 
// What are some useful methods to use to manipulate the DOM?
// 	One thing to note is the syntax of what the different elements are. Getting an Element class
// 	or tagname returns an array and in order to change all elements of this one has to run a JS 
// 	loop to select each value of the array to make changes. One can also call specific values by
// 	its array position.
// 	Another thing is templates, which is an unprocess HTML element that is hidden until told to
// 	be appended. With this we can have certain elements only appear when they are called.
