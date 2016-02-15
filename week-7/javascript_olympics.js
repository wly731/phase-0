 // JavaScript Olympics

// I paired with: Alexander Williams on this challenge.

// This challenge took me 1.5 hours.


// Warm Up




// Bulk Up

// Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes, for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"

// Would it make more sense to have win be defined as a function expression or a function declaration?

var temp_name = function (array2){

  //loop through array
  for (var i = 0; i <= array2.length-1; i++){

    array2[i].win = "won";

    console.log(array2[i].name + " " + array2[i].win + " the " + array2[i].event + "!");
  }

}


   var athletes = function(){};

   var sarah = new athletes
   sarah.name = "Sarah Hughes"
   sarah.event = "Ladies' Singles"

   var bob = new athletes
   bob.name = "Bob Hughes"
   bob.event = "poker"


  var athlete_array = [sarah,bob];

  temp_name(athlete_array);



 // temp_name(athletes);


  //name = array[0]
  //event = array[1]
  //wind

  //prints "Sarah Hughes won the Ladies' Singles!"




// Jumble your words

var temp_name2 = function reverse(string_in){
    return string_in.split("").reverse().join("");
}

console.log(temp_name2("Alex"))


// 2,4,6,8

// Create a function that accepts an array of numbers. Return an array with only the even numbers. You can do this manually or use built-in JavaScript Array Methods (Links to an external site.). Are you missing Ruby yet?

var temp_name3 = function (num_array){
  var even_array = [];
  for (var i=0; i<num_array.length; i++){

    if (num_array[i]%2 == 0)
      even_array.push(num_array[i]);
  }
      return even_array;

}

var temp_array3 = [0,1,2,3,4,5,6,7,8,9];
console.log(temp_name3(temp_array3));

// "We built this city"

function Athlete(fullname, age, sport, quote) {
    this.name = fullname;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Ans: How to use constructor functions

// What are constructor functions?

// Ans: An object constructor function is a function used to create a new object of the same type.

// How are constructors different from Ruby classes (in your research)?

// Ans: In Ruby we used .initialize method and assign the value to instance variables; While in JS we are just assigning values to different properties of an object.