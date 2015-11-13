// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Gregory Wehmeier.

// Pseudocode
// Input: integer
// Output: integer as string with commas
// Create method to reverse a string
//  iterate over the string, starting at the end
//   append the characters to result string
// Create method to insert commas
//   turn integer to string
//   call reverse method
//   iterate over the string. Insert commas at each 4th
//   call reverse method

// Initial Solution

// var reverseString = function(string) {
//   var result = "";
//   for (var i = string.length -1; i >= 0 ; i--) {
//     result += string.charAt(i);
//   }
//   return result;
// }

// function seperateComma(int){
//   var num = int.toString();
//   num = reverseString(num);
//   for (var i = 3; i < num.length; i += 4){
//     num = num.slice(0,i) + "," + num.slice(i);
//   }
//   return reverseString(num);
// }

// Refactored Solution
var reverseString = function(string) {
  var result = "";
  for (var i = string.length -1; i >= 0 ; i--) {
    result += string.charAt(i);
  }
  return result;
}

function seperateComma(int){
  var num = reverseString(int.toString());
  for (var i = 3; i < num.length; i += 4){
    num = num.slice(0,i) + "," + num.slice(i);
  }
  return reverseString(num);
}



// Your Own Tests (OPTIONAL)
console.log(seperateComma(1211111112));



// Reflection