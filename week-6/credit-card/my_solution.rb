# Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself
# I spent 1.75 hours on this challenge.

# Pseudocode

# Input: a 16-digit card number
# Output: true or false
# Steps:

=begin

.initialize

convert the card number to string

check the string length, return an arguement error if the string length does not equal to 16

define an instance variable with an array data type to store the card number digit by digit


.step1
iterate through the card number array.

If index is divisible by 2, then multiply that digit by 2


.step2

convert the numbers inside the card number array into strings

iterate through the card number array, if the element is a double-digit number, then split it into 2 strings of single digit.

flatten the entire string array, then iterate through this array and convert all the single digit string back into integers.

iterate through the array again, sum up all the numbers.

.step3

IF the sum is divisible by 10
  return true
ELSE
  return false
END


=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   attr_reader :card_num, :card_num_step_1, :card_num_step_2, :sum

#  def initialize (card_num)

#   if card_num.to_s.length != 16
#     raise ArgumentError.new("Credit Card number must be 16 digits")
#   end

#   @card_num = []
#   @card_num = card_num.to_s.split('').map(&:to_i)

#  end


#   def step_1
#     digit_index = 0
#     @card_num_step_1 = @card_num.map.with_index { |number, index|
#       if index % 2 == 0
#        number*2
#       else
#        number
#       end
#     }
#   end

#   def step_2
#     @card_num_step_2 = @card_num_step_1.map(&:to_s)
#     @sum = 0

#     @card_num_step_2.map! { |number|
#       number.split("")
#     }

#     @card_num_step_2 = @card_num_step_2.flatten

#     p @card_num_step_2

#     @card_num_step_2 = @card_num_step_2.map{ |number|
#       number.to_i
#     }

#     p @card_num_step_2

#     @card_num_step_2.each { |number|
#       @sum = @sum + number
#     }

#   end

#   def step_3
#     if @sum % 10 == 0
#       p true
#     else
#       p false
#     end
#   end

#   def check_card
#     step_1
#     step_2
#     step_3
#   end

# end



# Refactored Solution


class CreditCard

  attr_reader :card_num, :card_num_step_1, :card_num_step_2, :sum

 def initialize (card_num)

  if card_num.to_s.length != 16
    raise ArgumentError.new("Credit Card number must be 16 digits")
  end

  @card_num = card_num.to_s.split('').map(&:to_i)

 end


  def step_1
    digit_index = 0
    @card_num_step_1 = @card_num.map.with_index { |number, index|
      if index % 2 == 0
       number*2
      else
       number
      end
    }
  end

  def step_2
    @card_num_step_2 = @card_num_step_1.map(&:to_s)
    @sum = 0

    @card_num_step_2.map! { |number|
      number.split("")
    }

    @card_num_step_2 = @card_num_step_2.flatten.map{ |number|
      number.to_i
    }

    @card_num_step_2.each { |number|
      @sum = @sum + number
    }
  end

  def step_3
    if @sum % 10 == 0
      p true
    else
      p false
    end
  end

  def check_card
    step_1
    step_2
    step_3
  end

end



# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

Ans: THe most difficult part is to figure out when to switch the credit card number into string and numbers according to the operation that I need to perform on it.

What new methods did you find to help you when you refactored?

Ans:
array.map(&:to_i)

This invokes .map on array, and for each element in the array, returns the result of calling to_i on that element.

What concepts or learnings were you able to solidify in this challenge?

Ans: Calling enumerables on an object that has a method called on it.

e.g.

array.flatten.map { |number| number*2 }


=end