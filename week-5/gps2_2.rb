# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps:

#   # [fill in any steps here]
#   # define an empty array
#   # hash
#   # pareses string
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]
# # output: hash

# list = {}

# def create_list(string_of_item)
#   array = []
#   array = string_of_item.split(' ')
#   hash = {}
#   array.each do |item|
#     hash[item] = 0
#   end
#   return hash
# end


# # Method to add an item to a list
# # input: item name and optional quantity
# # steps:
# # output:


# def add_item(list,item,quantity)
#   list[item] = quantity
# end

# # Method to remove an item from the list
# # input:
# # steps:
# # output:

# def remove_item(list,item)
#   list.delete(item)
# end

# # Method to update the quantity of an item
# # input:
# # steps:
# # output:

# def update_quantity(list,item,quantity)
#   list[item] = quantity

# end

# # Method to print a list and make it look pretty
# # input:
# # steps:
# # output:

# def print_list(item_list)
#   puts item_list
# end


# list = create_list("carrots apples cereal pizza")
# # p list
# add_item(list,"ice cream", 2)

# remove_item(list,"apples")

# # PEBCAK problem between chair and keyboard

# update_quantity(list,"carrots", 2)
# p list


#  Refactor


def create_list(string_of_item)
  hash = {}

  string_of_item.split(' ').each do |item|
    hash[item] = 0
  end
  return hash
end

def add_item(list,item,quantity)
  list[item] = quantity
end

def remove_item(list,item)
  list.delete(item)
end

def update_quantity(list,item,quantity)
  add_item(list,item,quantity)
end

def print_list(list)

  puts "Your shopping list\n"

  list.each do |item,quantity|

    puts "#{item}: #{" "* (10 - item.length)} #{quantity}"
  end

end


list = create_list(" ")

add_item(list,"Lemonade", 2)
add_item(list,"Tomatoes", 3)
add_item(list,"Onions", 1)
add_item(list,"Ice Cream", 4)

remove_item(list,"Ice Cream")

update_quantity(list,"Ice Cream", 1)

print_list(list)

# Reflection

# What did you learn about pseudocode from working on this challenge?
# Ans: I learned from my pair a new way of pseudocoding, which is half pseudocoding half coding at the same time. It helps me a lot since I can translate the psudocode into actual code line by line right away to see if my logic works or not.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Ans: if we use arrays, then we cannot assign meaningful keys to access the corresponding values. If we use hash, then the values are not in ordered and accessed by number index that are in ascending order.

# What does a method return?
# Ans: A method can return anything, or nothing.

# What kind of things can you pass into methods as arguments?
# Ans: Integers, strings, characters, arrays, hash, or even another method that return something.

# How can you pass information between methods?
# Ans: If I want pass information from method A to method B, I can define a local variable outside all the methods (let's say it is called x), and then assign the return value of method A to x, and then I can pass x as an argument into method B.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Ans: My concepts towards local and global variables, and the .each looping method, were solidified in this challenge.