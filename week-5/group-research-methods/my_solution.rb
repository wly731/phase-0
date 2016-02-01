# Research Methods

# Taylor Daugherty

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
  #input: array of strings, one letter
  #output: NEW array of strings
  #steps:
  #1. turn array into list of strings
  #split all words into their individual letters
  #2. iterate through all letters in words in array
  #3. IF word contains letters, add to new array or keep in current array
  #ELSE delete from array, or don't add to new array

def my_array_finding_method(array, letter)
  array.keep_if { |item| item.to_s.include?(letter) }
  return array
end

def my_hash_finding_method(hash, age)
  hash.keep_if { |key, value| value == age }
  return hash.keys
end

=begin
# Identify and describe the Ruby method(s) you implemented.
# keep_if: deletes every element of the array or hash that the code block evaluates to false
# include?: returns true if given object is present in array (if any element == object), otherwise return false
#.keys - returns new array of only the keys of the hash
=end

# Person 2 - Patrick Skelley
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
    if x.is_a? Integer
      x += thing_to_modify
    else
      x
    end
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value| source[key] = value + thing_to_modify }
end

# Release 1:


# Identify and describe the Ruby method you implemented:


# I used map! and each to create these methods.

# I had to use map! for the array; map iterates over the array and
# modifies it.

# For the modification of hash I used .each which looks at each key, value
# pairing in the hash.

# Teach your accountability group how to use the methods:


# For the .map method, this is very similar to the .each method. The map
# method performs a function on an array element and always returns an array
# of the SAME SIZE. My task was to increase the number values in the array
# by a given argument (thing_to_modify), the array is composed of ints and
# strings so I only wanted to add thing_to_modify to strings; therefore I
# performed an if test - if the element was an int then I would add
# thing_to_modify to it.

# For the each method, this was more straight forward, but you have to make
# sure you're using the right syntax. Since you want to modify the value at a
# given key you can look at each key and increase the value by thing_to_modify
# The method .each in this case therefore adds thing_to_modify to respective
# value associated with the respective key.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
# I learned that it's important to know exactly what you want to do and to look
# up a number of methods that you think will solve the problem and not to rule
# out solutions too quickly. This is because I had to go back to my original
# researched methods after first eleminating them as viable options.


# Person 3 - Robbie Santos

def my_array_sorting_method(source)
  array = []
  source.each do |element|
    array << element.to_s
  end
  array.sort!
  result = []
  array.each do |element|
    if element.to_i == 0
      result << element
    else
      result << element.to_i
    end
  end
  result
end

def my_hash_sorting_method(source)
   array = source.to_a
   result = array.sort_by do |element|
     element[1]
   end
   result
end

# Identify and describe the Ruby method(s) you implemented.
#In the first exercise I used to_s, to_i, and sort!
# to_s will attempt to convert the object to a string, turning 1 into "1".
#
# to_i will attempt to convert the object to an integer. If it fails, it will return 0.
#
# sort! will sort the elements of the array using <=> operator or a given block of code.
#
# In the second exercise, I used to_a and sort_by!
#
# to_a will convert a hash to a nested array.
#
# sort_by! will sort the elements of an array by a specified parameter.
#
# Teach your accountability group how to use the methods
#
# to_i
#
# "5".to_i
#   => 5
# 5.to_i  => 5
#
# "hello world".to_i
#   => 0
#
# to_a
#
# {a: 1, b:2, c:3}.to_a
#   => [[:a, 1], [:b, 2], [:c, 3]]
#
# to_s
#
# 5.to_s
#   => "5"
#
# "hello world".to_s
#   => "hello world"
#
# sort
#
# [2,3,5,1,4].sort
#   => [1,2,3,4,5]
#
# sort_by!
#
# [[:c, 3], [:a, 1], [:b, 2]].sort_by! { |element| element[1] }
#   => [[:a, 1], [:b, 2], [:c, 3]]
#


# Person 4 - Ben Giamarino
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item| item.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k, v| k.to_s.include? thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#
# Person 5 - Victor Wong

def my_array_splitting_method(source)
  nested_arr_int = []
  i = 0
  nested_arr_string = []
  s = 0

  source.each do |content|
    if content.is_a?(Integer)
      nested_arr_int [i] = content
      i += 1
    elsif content.is_a?(String)
      nested_arr_string [s] = content
      s += 1
    end
  end

  return master_arr = [nested_arr_int,nested_arr_string]

end

def my_hash_splitting_method(source, age)
  nested_arr_older = []
  o = 0
  nested_arr_younger = []
  y = 0

  source.each do |key,value|
    if value <= age
      nested_arr_younger [y] = [key,value]
      y += 1
    else
      nested_arr_older [o] = [key,value]
      o += 1
    end
  end

  return master_arr = [nested_arr_younger,nested_arr_older]

end
# Identify and describe the Ruby method(s) you implemented.

=begin
I used a new method here:

.is_a?(data_type)

to help me check whether the content is an integer or a string

=end