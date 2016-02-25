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
  var split_string = string_of_item.split(" ");

  //create an empty object storing the list of item
  var list_of_item = {};

  //iterate over all the items in the array of items
  for (item in split_string){

    //store each item as a new property of the item object, set the quantity as 0
    list_of_item[item] = 0;
  }

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


Ruby

def update_quantity(list,item,quantity)
  add_item(list,item,quantity)
end

