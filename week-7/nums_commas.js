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
we learned that if you call string as method we have to use ()
and we can use split with out the regex
function numCommas(number) {

} -> we did not use this because it's not best practice, it would make our f global and potentially have


*/