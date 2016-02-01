# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 0.5 hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#       raise ArgumentError.new("Number of side cannot be smaller than 1")
#     end
#     @sides = sides
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     return rand(@sides)+1
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Number of side cannot be smaller than 1")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(@sides)+1
  end
end







# 4. Reflection

=begin

What is an ArgumentError and why would you use one?

Ans: An error occured when the arguments passed in is wrong, or not expected by the programmer.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

Ans: I learned a new method called Rand()

What is a Ruby class?

Ans: A ruby class is a blueprint (or the parent), where the class provides the behaviors (methods) to all objects under it (the child)

Why would you use a Ruby class?

Ans: Once I define a class, I can churn out as many objects as possible that inherit all the methods from the class.

What is the difference between a local variable and an instance variable?

Ans: An instance variable belongs to an instance of a class, a local variable belongs to a stack frame.

Where can an instance variable be used?

Ans: an instance variable can be accessed by all methods in the same class.

=end