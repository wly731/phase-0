
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Miner Tom has to dig out 3 pieces of good diamond
// Goals: to collect 3 pieces of good diamond
// Characters: Miner Tom
// Objects: Miner, diamond
// Functions: Explore(), a function to explore diamonds; Count(), a function to count the pieces of good diamond that the miner has.

// Pseudocode
// create an object called "diamond_mine", it has a name property and a capacity property (number of times that miner Tom can explore)

// create an object called "miner", with a name property, good_diamond property and poor_diamond property.

// create a function called "explore". Using a random number between 0 and 1, randomly generate a diamond with a quality of either "good" or "poor". And then put this diamond into the cooresponding diamond property of miner Tom. After exploring, decrease the capacity of the diamond mine by 1.

// create a function called "count". This function determines if Tom has at least 3 good diamonds or not.

//

// Initial Code

// var diamond_mine ={
//   name: "diamond hill",
//   capacity: 10
// };

// var miner ={
//   name: "Tom",
//   good_diamond:0,
//   poor_diamond:0
// };

// function explore(){
//   if (diamond_mine.capacity > 0) {
//     var random_num = Math.random();
//     if (random_num < 0.5)
//       miner.poor_diamond ++;
//     else
//       miner.good_diamond ++;

//     diamond_mine.capacity --;
//   }
//   else
//     console.log("The mine has been fully exploited!");
// }

// function count(){
//   console.log("Remaining capacity of the mine: " + diamond_mine.capacity);
//   console.log("You have " + miner.good_diamond + " good diamonds and "+ miner.poor_diamond + " poor diamonds,");
//   if (miner.good_diamond >=3)
//     console.log("Good you already have more than 3 good diamonds, go and sell them!");
//   else
//     console.log("Please work harder to get at least 3 good diamond!");
// }

// explore();
// explore();
// explore();
// explore();
// explore();
// explore();
// explore();
// explore();
// explore();

// count();

// console.log(diamond_mine);
// console.log(miner);

// Refactored Code

var diamond_mine ={
  name: "diamond hill",
  capacity: 10
};

var miner ={
  name: "Tom",
  good_diamond:0,
  poor_diamond:0
};

function explore(){
  if (diamond_mine.capacity > 0) {
    var random_num = Math.random();
    if (random_num < 0.5)
      miner.poor_diamond ++;
    else
      miner.good_diamond ++;

    diamond_mine.capacity --;
  }
  else
    console.log("The mine has been fully exploited!");
}

function count(){
  console.log("Remaining capacity of the mine: " + diamond_mine.capacity);
  console.log("You have " + miner.good_diamond + " good diamonds and "+ miner.poor_diamond + " poor diamonds,");

  if (miner.good_diamond >=3)
    console.log("Good you already have more than 3 good diamonds, go and sell them!");
  else
    console.log("Please work harder to get at least 3 good diamond!");
}

explore();
explore();
explore();
explore();
explore();
explore();
explore();
explore();
explore();

count();

console.log(diamond_mine);
console.log(miner);




// Reflection
/*
What was the most difficult part of this challenge?

Ans: The most difficult part is to come up with a framework of how do I want to run the game.

What did you learn about creating objects and functions that interact with one another?

Ans: Creating objects and functions that interact with one another is similar to accessing instance variables of different objects in Ruby. I feel like in JS we can create/remove/modify any properties of any objects more freely and easily. It is more intuitive.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

Ans: I used the built-in method - Math.random(). It generates a random number between 0(inclusive) and 1(exclusive).


How can you access and manipulate properties of objects?

Ans: I can simply access and manipulate the properties of objects by placing the property name after a dot after the object e.g.

miner.good_diamond = 0;

*/