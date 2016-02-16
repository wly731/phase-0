// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var my_variable = 1;

console.log(my_variable+1);


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

 // Looping a Triangle
var triangle = '#'

for (var i=1;i<=7;i++){

  console.log(triangle);
  triangle += '#';

  }




// Functions

// Complete the `minimum` exercise.

function min(num1, num2){
  if (num1<num2)
    return num1;
  else
    return num2;
}

console.log(min(0, 10));

console.log(min(0, -10));


// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Victor Wong",
  age: 22,
  food: ["pasta", "sushi", "beef"],
  quirk: "I hate monkeys"
};

console.log(me.name);
console.log(me.age);
console.log(me.food);
console.log(me.quirk);

/*


*/