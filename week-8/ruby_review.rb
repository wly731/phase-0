# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

=begin

First assign a string "bettysue" to the variable "name".

Call the function "assert".

For the function, it will raise an error message "Assertion failed!" unless the condition inside the curly brackets is met.

In this case, line 13 is alright, but line 14 will produce an error.


=end

# 3. Copy your selected challenge here

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

# Driver Test Code

# new_game = GuessingGame.new(10)
# new_game.guess(1)
# new_game.guess(5)
# p new_game.solved?
# new_game.guess(10)
# p new_game.solved?



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

# new_game = GuessingGame.new(10)
# assert { new_game.solved? == true }

new_game = GuessingGame.new(10)
new_game.guess(10)
assert { new_game.solved? == true }

# 5. Reflection

=begin

What concepts did you review or learn in this challenge?

Ans: I learned how to create Asert Statements to replace some driver testing codes.


What is still confusing to you about Ruby?

Ans: Not really at this stage


What are you going to study to get more prepared for Phase 1?

Ans: I would like to immerse myself into more intense SQL.

=end