// Separate Numbers with Commas in JavaScript **Pairing Challenge**
//Nayeli Carolina Hernandez Medellin
//Carolina Medellin

// I worked on this challenge with: .

// Pseudocode
//make number in to string
//make that string in to array
//loop over the array every 4 elements append a comma in to thre array
//place holder for the array
//function
//newNumber=[];
//for loop
//push or append or insert comma
//print new Number
//end of function


// // Initial Solution
// var numCommas = function(number) {
//   var num_array = number.toString().split("");
//   for (var i = 3; i < num_array.length; i += 4) {
//     num_array.splice(num_array.length-i, 0, ",");
//     console.log(num_array[num_array.length - i]);
//   }
//   console.log(num_array.join(""));
// }



// Refactored Solution

var numCommas = function(number) {
  var num_array = number.toString().split("");
  for (var i = 3; i < num_array.length; i += 4) {
    num_array.splice(num_array.length-i, 0, ",");
  }
  console.log(num_array.join(""));
}



// Your Own Tests (OPTIONAL)

 var test_number = 1234567895;
numCommas(test_number);


// Reflection
/*
##What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

Yes because we didn't have all of the string methods we are used to being able to take advantage of.

##What did you learn about iterating over arrays in JavaScript?

We kept in mind that it was best to start from the end of the array if we were going to manipulate it, that way none of the indices we were soon to access would move.

##What was different about solving this problem in JavaScript?

Different methods to choose from forced us into manipulating arrays instead of strings.

##What built-in methods did you find to incorporate in your refactored solution?

We got it good on the first try we felt, we mostly took out the debug code.


*/