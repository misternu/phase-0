// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
foobar = $('h1')

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('h1:first').css({
    "color": "blue",
    "border": "1px solid black",
    "visibility": "visible"
}).html("Island Foxes");

  $('img').on('mouseover', function(e){
      e.preventDefault()
    $(this).attr('src', 'http://cdn2.arkive.org/media/E3/E30E3601-D986-46EE-B8BB-070248581318/Presentation.Large/Island-fox-sitting-on-rock.jpg');
  });

 $('img').on('mouseout', function(e){
      e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
 });

//RELEASE 5: Experiment on your own


 $('img').on("click", function(){

      $('img').animate({width: 100}, 'slow', function(){});
 });

}); // end of the document.ready function: do not remove or write DOM manipulation below this.

/* Reflection
##What is jQuery?
JQuery is a language used to select and manipulate elements of the dom

##What does jQuery do for you?
It handles the finding of dom elements that match certain attributes, and the creation of triggered events and css animations.

##What did you learn about the DOM while working on this challenge?
I reviewed that it is a tree of nested objects that the browser uses to try to decide how to display content. They can be manipulated programmatically after the page has loaded, and in real time response to user behaviors.
*/