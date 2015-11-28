/* Pseudocode
DEFINE a function new_list that makes a new empty object literal
DEFINE a function new_item that takes 'list' 'item' and 'quantity'
  SET the 'item' attribute of 'list' to 'quantity'
DEFINE a function remove_item that takes 'list' and 'item'
  IF list has item
    remove item from list
DEFINE a function update_item that takes list item quantity
  IF the list has the item
    change the value to quantity
DEFINE a function print_list that takes list
  ITERATE over the dictionary
    PRINT the name of the item, a colon, then the quantity
*/

// function newList() {return Object.create()};
// function newItem(list, item, quantity) {
//   list[item] = quantity;
// }
// function removeItem(list, item) {
//   if (list[item]) {
//     delete list[item];
//   }
// }
// function updateItem(list, item, quantity) {
//   if (list[item]) {
//     list[item] = quantity;
//   }
// }
// function printList(list) {
//   for (var item in list) {
//     console.log(item + ": " + list[item].toString());
//   }
// }
// groceries = newList;
// newItem(groceries, "Grape", 20);
// newItem(groceries, "Lemon", 2);
// newItem(groceries, "hammer", 1);
// updateItem(groceries, "Grape", 35);
// removeItem(groceries, "hammer");
// printList(groceries);

//Refactor:
var List = function(listName) {
  this.listName = listName;
  this.items = Object.create;
}
List.prototype.newItem = function(item, quantity) {this.items[item] = quantity}
List.prototype.removeItem = function(item) {delete this.items[item]}
List.prototype.updateItem = function(item, quantity) {
  if (this.items[item]) {this.items[item] = quantity}
}
List.prototype.printList = function() {
  console.log(this.listName);
  for (var item in this.items) {
    console.log(item + ": " + this.items[item].toString());
  }
}

groceries = new List("Groceries");
groceries.newItem("Grape", 20);
groceries.newItem("Lemon", 2);
groceries.newItem("hammer", 1);
groceries.updateItem("Grape", 35);
groceries.removeItem("hammer");
groceries.printList();

/* Reflection
##What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I was able to successfully use constructors and prototypes to refactor this solution into oop


##What was the most difficult part of this challenge?
In my initial solution I had to mess around to figure out how to make an alias of the object constructor. Turned out to be a waste of time because I wasn't going to use that in the end anyway.


##Did an array or object make more sense to use and why?
An object made more sense, and then eventually a nested object, because I don't feel like the order should matter, and we need to be able to potentially store multiple bits of information about each list item. easier to add features this way too.
*/