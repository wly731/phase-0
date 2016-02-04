# Build a simple guessing game


# I worked on this challenge by myself
# I spent 0.5 hours on this challenge.

# Pseudocode

# Input:
# for .initialize, take an integer as the anwer
# for .guess, take an integer as the guess
# for .solved?, no input

# Output:
# for .initialize, no output
# for .guess, return the symbol :low, :high or :correct
# for .solved?, return true if the guess is correct, else return false

# Steps:

# For .initialize(answer)
# initialize by assigning the answer argument to an instance variable called @answer

# Define 2 other instance variables, called @last_result and @last_guess, both assigned nil

# For .guess(guess)

# assign guess to @last_guess

# compare @last_guess to @answer

# IF @last_guess < @answer
#   return the symbol :low
# ELSIF @last_guess > @answer
#   return the symbol :high
# ELSE
#   assign :correct to @last_result
#   return @last_result
# END

# For solved?
# IF @last_result equals to :correct
#   return true
# ELSE
#   return false
# END



# Initial Solution

=begin

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @last_result = nil
    @last_guess = nil
  end

  def guess(guess)
    @last_guess = guess
    if @last_guess < @answer
      @last_result = :wrong
      return :low
    elsif @last_guess > @answer
      @last_result = :wrong
      return :high
    else
      @last_result = :correct
      return @last_result
    end
  end

  def solved?
    if @last_result == :correct
      return true
    else
      return false
    end
  end

end

=end


# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_result = nil
    @last_guess = nil
  end

  def guess(guess)
    @last_guess = guess
    @last_result = :wrong
    if @last_guess < @answer
      return :low
    elsif @last_guess > @answer
      return :high
    else
      @last_result = :correct
      return @last_result
    end
  end

  def solved?
    return @last_result == :correct
  end

end




# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Ans: Using a real-world object like water bottle for illustration, instance variables are the attributes of this bottle, such as volume, height and color. Instance methods are the action that can be carried out by the water bottle such as .pour, .fill etc.

When should you use instance variables? What do they do for you?

Ans: We use instance variables when we want to define some attributes for the object under the class, where the attributes will be called by different instance methods. Instance variables can store some content that can be called and used by different instance methods under the same class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Ans: I use flow control by combining conditional statment (e.g. IF ELSE) with operators like >, <, == etc.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Ans: The first advangtage of using symbols is that symbols are immutable, they cannot be changed during runtime, unlike strings where you can perform string manipulation. The second advantage is that every :symbol only refers to the same object, every time we use the same :symbol it will not consume extra memory space; While for strings, every time we call and use the string with the same content, it will consume extra memory because strings with the same content are not unique. In this code since the user may probably have a lot of guesses, while we only want to have 1 answer: (:correct, :high, or :low), using symbol here is better than using strings.

=end