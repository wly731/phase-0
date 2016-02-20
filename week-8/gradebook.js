/*
Gradebook from Names and Scores
I worked on this challenge with: Cyrus Vattes
This challenge took me 1.25 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};

// for (var name in students){ //push student names to gradebook
//   gradebook[students[name]] = {};
//   gradebook[students[name]].testScores = [];
// };

// for (var i = 0; i < scores.length; i++) { //add scores to gradebook
//   gradebook[students[i]].testScores = scores[i];
// };

// gradebook.addScore = function(name, score) { //push scores function
//   gradebook[name].testScores.push(score);
// };

// var average = function (numArr) { //return averaage
//   var sum = numArr.reduce(function(a, b){
//     return a + b;
//   });
//   return (sum/numArr.length);
// };

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores);
// };


// __________________________________________
// Refactored Solution


var gradebook = {};

for (var name in students){ //push student names to gradebook
  gradebook[students[name]] = {};
  gradebook[students[name]].testScores = [];
};

for (var i = 0; i < scores.length; i++) { //add scores to gradebook
  gradebook[students[i]].testScores = scores[i];
};

gradebook.addScore = function(name, score) { //push scores function
  gradebook[name].testScores.push(score);
};

var average = function (numArr) { //return (numArr.reduce/numArr.length)
  return (numArr.reduce(function(a, b){return a + b;})/numArr.length);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};





// __________________________________________
// Reflect

/*

What did you learn about adding functions to objects?

Ans: I didn't know we can add functions to a property of an object before. It is awesome that we can assign a function to a property and call the function by calling the property directly.


How did you iterate over nested arrays in JavaScript?

Ans: I like to use 2 index counters i and j to iterate over nested arrays.


Were there any new methods you were able to incorporate? If so, what were they and how did they work?

Ans: We used a new method called array.reduce. It reduces every 2 elements into a single element in an array. We used that to calculate the sum of an array of integers.


*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)