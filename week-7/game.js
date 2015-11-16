// Design Basic Game Solo Challenge

// This is a solo challenge

// Description: Simple blackjack game
// Overall mission: MVP, can hit stand bust, no dealer
// Objects: Deck, table
// Functions: deal, hit, stand, shuffle

// Pseudocode
// Make a deck object to hold the remaining cards, can be shuffled
// function shuffle
//   resets and randomizes the array of cards
//   removes any cards from the table
// function deal
//   clears the last hand
//   plays two cards to the table
// function hit
//   plays a card to the table
// function stand
//   finds out the total on the table and returns it
// Make a table object to hold current cards and discard
// function clean takes an boolean
//   if true, empty the table
//   otherwise, just move the hand to discard pile

// Initial Code
var deck = {cards:[]};
var table = {cards:[], discard:[]};

var rankHelper = function(rank) {
  return Array(4).fill(rank);
}

var shuffleHelper = function(array) {
  //This is the Knuth shuffle
  var i = array.length;
  var random;
  var swap;

  while (i != 0) {
    random = Math.floor(Math.random() * i);
    i -= 1;
    swap = array[i];
    array[i] = array[random];
    array[random] = swap;
  }

  return array;
}

deck.shuffle = function() {
  for (var i = 0; i < 13; i++) {
    if (i == 0) {
      deck.cards = deck.cards.concat(rankHelper("A"));
    } else if (i < 10) {
      deck.cards = deck.cards.concat(rankHelper((i+1).toString()));
    } else if (i == 10) {
      deck.cards = deck.cards.concat(rankHelper("J"));
    } else if (i == 11) {
      deck.cards = deck.cards.concat(rankHelper("Q"));
    } else if (i == 12) {
      deck.cards = deck.cards.concat(rankHelper("K"));
    }
  }
  deck.cards = shuffleHelper(deck.cards);
}

deck.deal = function() {
  this.shuffle();
  table.clean();
  table.cards = deck.cards.splice(0,2);
}

deck.hit = function() {
  table.cards = table.cards.concat(deck.cards.splice(0,1));
}

deck.stand = function() {
  var total = 0;
  var aces = 0;
  for (var i = 0; i < table.cards.length; i++) {
    if (table.cards[i] == "A") {
      aces += 1;
      if (total + 11 < 22) {
        total += 11
      } else {
        total += 1;
      }
    } else if (table.cards[i] == "J" ||
               table.cards[i] == "Q" ||
               table.cards[i] == "K") {
      total += 10;
    } else {
      total += parseInt(table.cards[i]);
    }
  }
  while (total > 21 && aces > 0) {
    total -= 10;
    aces -= 1;
  }
  return total;
}

table.clean = function(all) {
  if (all) {
    table.cards = [];
    table.discard = [];
  } else {
    table.discard.concat(table.cards);
    table.cards = [];
  }
}

//driver code
deck.shuffle();
deck.deal();
deck.hit();
console.log(table.cards);
console.log(deck.stand());

// Reflection
//
//What was the most difficult part of this challenge?
//Fixing the errors, dealing with the immutability of arrays. Fortunately, I had already read about the knuth shuffle before.

// What did you learn about creating objects and functions that interact with one another?
// In javascript it is much easier for objects to mess with each others attributes, but that can just get more messy.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// The parseint function made everything less complicated, because I had originally mixed strings and ints in the deck. Since I could change them back to ints easily, I just made the whole deck into strings.

// How can you access and manipulate properties of objects?
// I just call those properties with the dot syntax, manipulating them is as simple as setting them with an equals sign or using a destructive method.