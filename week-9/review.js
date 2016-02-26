// // Ruby version

// // def create_list(string_of_item)
// //   hash = {}

// //   string_of_item.split(' ').each do |item|
// //     hash[item] = 0
// //   end
// //   return hash
// // end



// var create_list = function(string_of_item){

//   //split the string argument into an array of items
//   var split_string = string_of_item.split(" ");

//   //create an empty object storing the list of item
//   var list_of_item = {};

//   //iterate over all the items in the array of items
//   for (var i = 0; i < split_string.length; i++){

//     //store each item as a new property of the item object, set the quantity as 0
//     list_of_item[split_string[i]] = 0;
//   }
//   return list_of_item;
// }

// // Ruby

// // def add_item(list,item,quantity)
// //   list[item] = quantity
// // end


// var add_item = function(list,item,quantity){
//   list[item] = quantity;
// }



// // Ruby

// // def remove_item(list,item)
// //   list.delete(item)
// // end

// var remove_item = function(list,item){
//   delete list[item];
// }


// // Ruby

// // def update_quantity(list,item,quantity)
// //   add_item(list,item,quantity)
// // end

// var update_quantity = function(list,item,quantity){

//   add_item(list,item,quantity);

// }

// // Ruby

// // def print_list(list)

// //   puts "Your shopping list\n"

// //   list.each do |item,quantity|

// //     puts "#{item}: #{" "* (10 - item.length)} #{quantity}"
// //   end


// var print_list = function(list){

//   console.log("Your shopping list:");

//   for (item_property in list){
//     if (list.hasOwnProperty(item_property)){
//       console.log("we have "+list[item_property]+" "+item_property);
//     }
//   }

// }


// Refactor

// Ruby version

// def create_list(string_of_item)
//   hash = {}

//   string_of_item.split(' ').each do |item|
//     hash[item] = 0
//   end
//   return hash
// end



var create_list = function(string_of_item){

  //split the string argument into an array of items
  var temp_split_string = string_of_item.split(" ");

  //create an empty object storing the list of item
  var list_of_item = {};

  //iterate over all the items in the array of items
  for (var i = 0; i < temp_split_string.length; i++){

    //store each item as a new property of the item object, set the quantity as 0
    list_of_item[temp_split_string[i]] = 0;
  }
  return list_of_item;
}

// Ruby

// def add_item(list,item,quantity)
//   list[item] = quantity
// end


var add_item = function(list,item,quantity){
  list[item] = quantity;
}



// Ruby

// def remove_item(list,item)
//   list.delete(item)
// end

var remove_item = function(list,item){
  delete list[item];
}


// Ruby

// def update_quantity(list,item,quantity)
//   add_item(list,item,quantity)
// end

var update_quantity = function(list,item,quantity){

  add_item(list,item,quantity);

}

// Ruby

// def print_list(list)

//   puts "Your shopping list\n"

//   list.each do |item,quantity|

//     puts "#{item}: #{" "* (10 - item.length)} #{quantity}"
//   end


var print_list = function(list){

  console.log("Your shopping list:");

  for (item_property in list){
      console.log("we have "+list[item_property]+" "+item_property);
  }

}



// Driver code

var list = create_list("Apple");


add_item(list,"Lemonade", 2);
add_item(list,"Tomatoes", 3);
add_item(list,"Onions", 1);
add_item(list,"Ice Cream", 4);

remove_item(list,"Ice Cream");

update_quantity(list,"Ice Cream", 1);

print_list(list);

/*
Reflection

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

Ans: When I tried to iterate over an array using a for..in..statement, there are some weird things. I replaced it with a simple for loop and it works. I tried to look it up online and someone says that it is not a good practice to iterate arrays by a For..in statement in JavaScript.


What was the most difficult part of this challenge?

Ans: The most difficult part was to figure out the reason of having an error when I use a For...In... statement to iterate an array.


Did an array or object make more sense to use and why?

Ans: It makes more sense to use an object here because in the original Ruby challenge a hash was used.

*/