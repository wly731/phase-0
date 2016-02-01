# Calculate the mode Pairing Challenge

# I worked on this challenge with: Kyle Rombach

# I spent 1.25 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# An array of numbers or strings

# What is the output? (i.e. What should the code return?)
# An array of the most frequent values

# What are the steps needed to solve the problem?

=begin

First, iterate through the mode array

Create a hash, each key = each value from mode array, each corresponding value = occurance of each value from mode array

Return the key of biggest value in the hash

=end

# 1. Initial Solution

# def mode(mode_arr)
#   freq_hash = Hash.new(0)

#   mode_arr.each do |v|

#     freq_hash[v] =  mode_arr.count(v)

#   end


#     max_value = freq_hash.values.max


#     new_arr = freq_hash.select{|k, v| v == max_value}.keys
#     p new_arr


# end


# 3. Refactored Solution

def mode(mode_arr)
  freq_hash = Hash.new(0)

  mode_arr.each do |v|


    freq_hash[v] =  mode_arr.count(v)

  end


    new_arr = freq_hash.select{ |k, v|
      v == freq_hash.values.max}.keys

    p new_arr


end



# 4. Reflection