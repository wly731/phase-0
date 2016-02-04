# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 1.5 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

# create an array, containing 5 elements: b,i,n,g,o

# use the rand() method to generate an integer ranging from 0-5, store this number into an instance variable called index. Then use index to access the corresponding letter stored in the array

# use the rand() method to generate an integer ranging from 0-99, and then add 1 to it to make it a random integer ranging from 1-100. Store this into an instance variable called number.

# combine the letter and the number together


# Check the called column for the number called.

# Iterate through each row of the bingo board array using the .map method

# Use the instance variable index to access the same column of element across all rows e.g. row[@index]


# If the number is in the column, replace with an 'x'

# In the iteration, if row[@index] equals to the number generated, then replace the element with an 'X'


# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)

# Iterate through every row of the bingo_board using .each method

# print out each role, with a line break

# Initial Solution

=begin

class BingoBoard

  attr_accessor :bingo_board


  def initialize(board)
    @bingo_board = board
  end

  def call
    bingo = ['B','I','N','G','O']
    @index = rand(5)
    letter = bingo[@index]
    @number = rand(100)+1
    p letter + @number.to_s
  end

  def check
      @bingo_board.map {|row|
        if row[@index] == @number
          row[@index] = 'X'
        end
      }
  end

  def show
    @bingo_board.each {|row|
      p row

    }
  end
end

=end

# Refactored Solution

class BingoBoard


  def initialize(board)
    @bingo_board = board
  end

  def call
    bingo = ['B','I','N','G','O']
    @column = rand(5)
    letter = bingo[@column]
    @number = rand(100)+1
    p "The call is: #{letter + @number.to_s}"
  end

  def check
      @bingo_board.map {|row|
        if row[@column] == @number
          row[@column] = 'X'
        end
      }
  end

  def show
    p "Here is your bingo board:"
    @bingo_board.each {|row|
      p row
    }
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check

new_game.show

array = Array.new(2){Array.new(2)}
array[0][0] = 1
array[0][1] = 2
array[1][0] = 3
array[1][1] = 4

p array

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Ans: When it involves different concepts such as Class, instance variables, different methods, nested array, it is hard for me to do pseudocoding with pure English, without the use of some coding terminology.

What are the benefits of using a class for this challenge?

Ans: Creating a Bingo board class for this challenge allows me to create specific methods and instance variables that are only shared among these methods under the same class. Everything looks more tidy and neat.

How can you access coordinates in a nested array?

Ans: Lets say we have numbers for row and column. We can create a nested array = [[1,2,3],
                [4,5,6],
                [7,8,9]]

We can access 6 by array[row][column] which is array[1][2]

What methods did you use to access and modify the array?

Ans: I used .map to iterate through and modify the bingo array.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

Ans: I learned a new method called .map while reviewing the Ruby docs. It is used to iterate through the content of a data type, make some changes and assign a new value to it. It is called in the following structure:

num = [1,2,3,4]

num.map{ |number| number*2 } #=> [2,4,6,8]


How did you determine what should be an instance variable versus a local variable?

Ans: if I want a variable to be an attribute of the object that belongs to that class, and I want this variable to be shared among different methods under the same class, I will use an instance variable. If I want a variable that only be used in a method, such as a counter variable for looping, then I will use a local variable.

What do you feel is most improved in your refactored solution?

Ans: I improved the naming of some variables so that the code is more readable

=end