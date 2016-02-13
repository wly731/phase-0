// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: David Lange.

// Pseudocode
//the input is going to be an integer
//change to a string, turn into array
//reverse the array
//find the length of the array
//write a loop to iterate through the array inserting commas

// determine the number of commas needed based on the length of the string

// an index counter i = -1

// condition is true

// i += 4

// number.splice(i, 0, ",");


// reverse back the array and join it


// separateComma(1569743) == "1,569,743"



// Initial Solution

// function separateComma(num) {

//    var num = num.toString();
//    var num = num.split('');
//    var num = num.reverse();

//   console.log(num);

//   var length = num.length;

//   console.log(length);

//   var commas = Math.floor((length-1)/3);

//   console.log(commas);

//   var i = -1;

//   while (commas > 0) {

//     i += 4;

//     num.splice(i, 0, ",");

//     commas--;
//   }

//    console.log(num);

//   var int = num.reverse();
//   console.log(int.join(""));

// };



//   separateComma(1000000);



// Refactored Solution

function separateComma(num) {


  var num = num.toString().split('').reverse();

  var length = num.length;

  var commas = Math.floor((length-1)/3);

  var i = -1;

  while (commas > 0) {

    i += 4;

    num.splice(i, 0, ",");

    commas--;

  }

  console.log(num.reverse().join(""));


};

  separateComma(100000);


// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// Ans: Approaching the problem using JavaScript is more or less the same as using Ruby. However, this time I apprached the problem differently as if I refactored the initial solution (the one in Ruby) into a better one in JavaScript.

// What did you learn about iterating over arrays in JavaScript?

// Ans: Instead of using an enumerator as in Ruby, in JavaScript I iterated through an array using a while loop and an index counter.

// What was different about solving this problem in JavaScript?

// Ans: The array iteration is different from that in Ruby.

// What built-in methods did you find to incorporate in your refactored solution?

// Ans: We used math.floor(), array.splice() and console.log()