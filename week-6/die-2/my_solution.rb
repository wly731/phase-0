# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent 0.5 hours on this challenge.

# Pseudocode

# Input: A array of labels
# Output:
# .sides #=> number of sides
# .roll #=> return one of the labels randomly

# Steps:

# For initialize()
# IF labels is empty
#   raise the argument error message
# END

# instance variable @sides = the number of elements in the label array

# instance variable @label = the label array of the argument of the initialize method

# For sides()

# simply return the instance variable @sides

For roll()

# generate a random number from 0 to the number of sides - 1

# Use this random number as the index of the label array to access a random side of the die

# Return the above value

# Initial Solution

=begin

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Labels cannot be empty!")
    end
    @sides = labels.count
    @labels = labels
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(@sides)]
  end
end

=end

# Refactored Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Labels cannot be empty!")
    end
    @sides = labels.count
    @labels = labels
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(@sides)]
  end
end






# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

Ans: I didn't change much logic since it is very similar to the last die class that I created. The main difference is that I need an array to store the different labels on the die, and then I need to used the rand() method to generate the index for the label array.

What does this exercise teach you about making code that is easily changeable or modifiable?

Ans: If we break down the problem into smaller pieces and we address them by defining different methods, we can easily modify the methods under the same class to address similar but more complex problems, without having to design a bunch of new code from scratch.


What new methods did you learn when working on this challenge, if any?

Ans: I didn't use any new methods in this challenge.

What concepts about classes were you able to solidify in this challenge?

Ans: I understand more about how to define and call the instance variables across different methods under the same class.


=end