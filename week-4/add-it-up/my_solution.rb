# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: sum of all numbers
# Steps to solve the problem.
=begin
1. loop through every element of the array
2. add the element one by one and store it in a variable call sum
3. print the variable sum
=end

# 1. total initial solution
def total (list_of_num)
  sum = 0
  list_of_num.each do |number|
    sum = sum + number
  end
  p sum
end



# 3. total refactored solution
def total (list_of_num)
  sum = 0
  list_of_num.each do |number|
    sum = sum + number
  end
  p sum
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of strings
# Output: a sentence contenating all strings
# Steps to solve the problem.
=begin
1. loop through every element of the array
2. concatenate the element one by one to the variable called sentence, with a space between the original sentence and the newly concatenated element.
3. Remove the first space added to the sentence.
4. Capitalize the first character and add a period at the end of the sentence.
=end

# 5. sentence_maker initial solution
def sentence_maker (list_of_strings)
  sentence = ""
  list_of_strings.each do |word|
    sentence = sentence + " " + word
  end
  sentence = sentence[1..-1]
  sentence = sentence + "."
  p sentence.capitalize
end


# 6. sentence_maker refactored solution
def sentence_maker (list_of_strings)
  sentence = ""
  list_of_strings.each do |word|
    sentence = sentence + " " + word.to_s
  end
  sentence = sentence[1..-1]
  sentence = sentence + "."
  p sentence.capitalize
end