# Pad an Array

# I worked on this challenge with: Alex Williams

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Ans: array, min_size, pad value

# What is the output? (i.e. What should the code return?)
# Ans: An expanded array with the pad value filled up to the min_size

# What are the steps needed to solve the problem?
=begin

For the destructive method

measure the array length and assign it to a new variable called array_length

IF array_length < min_size

  WHILE array_lengh < min_size
    push the pad value to the end of the array
    array_length increase by 1
  END

  return the array

ELSE

  simply return the array because array_length is already > min_size. Hence, no need to make any change

END

=end




# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
array_length = array.length

  if array_length < min_size

    while array_length < min_size  do
     array.push(value)
     array_length +=1
    end

    return array

  else

    return array

  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  array_length = array.length
  array2 = array.clone
    if array_length < min_size

      while array_length < min_size  do
       array2.push(value)
       array_length +=1
      end

      return array2

    else

      return array2

    end
end


# 3. Refactored Solution



# 4. Reflection

# Question: Were you successful in breaking the problem down into small steps?
# answer: Yes by pseudocoding

# Question: Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# answer: Yes, because we wrote our pseudocode in the format similar to actual program loops, it is easy for us to tranlate them into actual "if-else condition" and "for loop".

# Question: Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# answer: We were stuck when the test returned a failure saying that we did not pass the test for "the method works non-destructively". We did not know why in the beginning because we already created a new array called array2 and make all the changes based on array2. In the end we solve the problem by doing "array2 = array.clone" instead of "array2 = array"


# Question: When you refactored, did you find any existing methods in Ruby to clean up your code?
# answer: N/A


# Question: How readable is your solution? Did you and your pair choose descriptive variable names?
# answer: It is quite readable, we used descriptive variable names such as array_length, array2.


# Question: What is the difference between destructive and non-destructive methods in your own words?

# answer: Destructive methods will make changes to your original input variable, while non-destructive will make changes and assign a new variable to store the changes so that the original input variable will not be changed.