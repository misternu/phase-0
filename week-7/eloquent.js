// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

//var this_variable = "a string";
//console.log(this.length);

//prompt("What is your favorite food?");
//console.log("Hey, that's mine too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var hashes = "#"
while (hashes.length <= 7) {
  console.log(hashes);
  hashes += "#"
}

for (var i = 1; i <= 100; i++) {
  output = "";
  if (i % 3 == 0) {
    output += "Fizz";
  }
  if (i % 5 == 0) {
    output += "Buzz";
  }
  if (output.length == 0) {
    output += i;
  }
  console.log(output);
}

var size = 8;
for (var i = 0; i < size; i++) {
  var line = ""
  for (var j = 0; j < size; j++) {
    line += (i+j) % 2 == 0 ? " " : "#";
  }
  console.log(line);
}

// Complete the `minimum` exercise.
function min(first, second) {
  return first < second ? first : second;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Manu",
  age: 30,
  foods: ["sushi", "aranchini", "risotto"],
  quirk: "Explaining my jokes"
}