// U3.W8-9: 


// I worked on this challenge [by myself].

// 1. User Stories

// As a user, I want to be able to create a new grocery list.
// As a user, I want to be able to add items to the list.
// As a user, I want to be able to update the quantity for a given item.
// As a user, I want to be able to remove items from the list.
// As a user, I want to be able to show the items in the list.

// 2. Pseudocode

/*
- Create an object "GroceryList"
- Add items to the list in form of a Hash
- Create a function "show" to show items in a list.
- Create a function "add" to add an item to the list.
- Create a function "update" to update the quantity for a given item.
- Create a function "remove" to remove an item from the list.

*/

// 3. Initial Solution

var GroceryList = {
  items: {
    eggs: 12,
    milk: 2,
    pears: 8,
    bananas: 6 
  },

// ---------------- View all the items in the list -----------------
  show: function(){
    console.log("Grocery List:\n");
    for (var key in this.items) {
        console.log(this.items[key] + " " + key);
    }
    console.log();
  },

// ---------------- Add an item to the list ------------------------
  add: function(item, quantity){
    this.items[item] = quantity;
    console.log("You added "+ quantity + " " + item +". Your Grocery list has been updated.\n");
  },

// ---------------- Update the quantity of an item in the list -----
  update: function(item, quantity){
    this.items[item] = quantity;
    console.log("You updated the quantity of " + item +". Your Grocery list has been updated.\n");
  },

// ---------------- Remove an item from the list -------------------
  remove: function(item){
    delete this.items[item];
    console.log("You removed "+ item +". Your Grocery list has been updated.\n");
  }
};


// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

GroceryList.show();

GroceryList.add("apples", 10);
GroceryList.show();

GroceryList.update("pears", 5);
GroceryList.show();

GroceryList.remove("milk");
GroceryList.show();

// 5. Reflection 

/*
The concepts of Javascript faded as I was more inclined towards Ruby for past few weeks. I used Codecademy
to refresh my understanding of Javascript and used the link below to finish this exercise:

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Introduction_to_Object-Oriented_JavaScript
*/
