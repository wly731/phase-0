# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# Ans: a positive integer
# What is the output? (i.e. What should the code return?)
# Ans: a string, which is a comma-separated integer
# What are the steps needed to solve the problem?

=begin
take the positive integer input and store it in a variable called input_num

set up an empty container array called num[]

convert the integer into a string, store it in a new variable called input_num_converted, then count the length of this string, and then assign it to a variable called "digits"

create a variable called "comma_counter"

comma_counter = (digits - 1) / 3

create a variable called "new_length"

new_length_with_comma = digits + comma_counter

create a position_index for the original integer

position_index = -1, because start counting from the end of the string

create i, another position index for the new array

WHILE comma_counter not equal to 0
  Push 3 digits to the new array starting from the position_index
  add a ","
  reduce comma counter by 1
  reduce the position_index by 3
  reduce i by 4
END

WHILE i is not -1
  Push the rest of the digits to the new array
END

Convert the array back into string using .join

=end
# 1. Initial Solution
def separate_comma (input_num)
  num = []
  input_num_converted = input_num.to_s
  digits = input_num_converted.length
  comma_counter = (digits - 1) / 3
  new_length_with_comma = digits + comma_counter
  position_index = -1
  i = new_length_with_comma - 1

  while comma_counter != 0
    num[i] = input_num_converted[position_index]
    num[i-1] = input_num_converted[position_index-1]
    num[i-2] = input_num_converted[position_index-2]
    num[i-3] = ","
    i = i - 4
    position_index = position_index - 3
    comma_counter = comma_counter - 1
  end

  while i != -1
    num[i] = input_num_converted[position_index]
    i = i - 1
    position_index = position_index - 1
  end

  p num.join

end



# 2. Refactored Solution

def separate_comma (input_num)
  num = []
  input_num_converted = input_num.to_s
  digits = input_num_converted.length
  comma_counter = (digits - 1) / 3
  new_length_with_comma = digits + comma_counter
  position_index = -1
  i = new_length_with_comma - 1

  while comma_counter != 0
    num[i] = input_num_converted[position_index]
    num[i-1] = input_num_converted[position_index-1]
    num[i-2] = input_num_converted[position_index-2]
    num[i-3] = ","
    i = i - 4
    position_index -= 3
    comma_counter -= 1
  end

  while i != -1
    num[i] = input_num_converted[position_index]
    i -=  1
    position_index -= 1
  end

  p num.join

end


# 3. Reflection
=begin

- What was your process for breaking the problem down? What different approaches did you consider?

Ans: When I was doing my Pseudocoding, since I have to insert commas, I then thought of using array structure. After inserting all the commas at the right position, I then convert the array back into string.

- Was your pseudocode effective in helping you build a successful initial solution?

Ans: Yes, it is especially helpful to set a clear mind on my counter variable I need to define

- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

Ans: I just made a slight improvement by using "-="

- How did you initially iterate through the data structure?

Ans: I use a while loop to interate through the arrays

- Do you feel your refactored solution is more readable than your initial solution? Why?

Ans" Yes a bit. by using "counter-=1" instead of "counter = counter - 1", it is less lengthy.

=end