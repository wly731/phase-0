// DOM Manipulation Challenge


// I worked on this challenge with: Brett Ripley


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className = "done";


// Release 1:

document.getElementById("release-1").style.display = "none";




// Release 2:

document.getElementsByTagName('h1')[0].textContent = "I completed release 2";


// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251" ;



// Release 4:

var i;
for (i=0; i < document.getElementsByClassName("release-4").length; i++){
  document.getElementsByClassName("release-4")[i].style.fontSize = "2em";

}

// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));



// Reflection:

// What did you learn about the DOM?

// Ans: Before we learned about the general structure of DOM. Now I feel more concrete since I learned how to access actually change a DOM node using JavaScript.


// What are some useful methods to use to manipulate the DOM?

// Ans: I always use
// document.getElementById
// document.getElementsByClassName
// docuemtn.getElementsByTagName

// and then followed by

// .style

// to change some attributes of that element.
