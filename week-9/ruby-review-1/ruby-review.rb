# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 1.5 hours on this challenge.

# Pseudocode





# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer
  attr_reader :win, :bingoboard
  #your code here
  def initialize(bingoboard)
    @bingoboard = bingoboard
    @win = false
  end


  def check_horizontal #Case horizontal
    @bingoboard.each{ |row|
      if @win == false
        if (row.all? {|num| num == 'x'}) == true
          @win = true
        end
      end
    }
    if @win == true
      puts "This is a horizontal BINGO!"
    end
  end


  def check_vertical
    r=0
    c=0

    for c in 0..4 #iterate over all columns
      if @bingoboard[r][c]=='x' #if it reaches a column with an 'x'
        for r in 1..4 #Fix the column number and iterate over the rows
          if @bingoboard[r][c]=='x' #on the same column, if all the rows contain an 'x'
            @win = true #win the game
          end
        end
      end
    end

    if @win == true
      puts "This is a vertical BINGO!"
    end
  end

  def check_diagonal
    r = 0
    @win = true

    #Case right_to_left
    while (@win == true && r<=4)
      if @bingoboard[r][r] != 'x' #check the diagonal starting from the left, if any element is not 'x', then assign false to @win
        @win = false
      end

      r+=1
    end

    #Case left_to_right
    if @win == false #if Case right_to_left is false, start the checking process for case left_to_right

      @win = true
      while (@win == true && r<=4)
        if @bingoboard[r][4-r] != 'x' #check the diagonal starting from the right, if any element is not 'x', then assign false to @win
        @win = false
      end

        r+=1
      end
    end


    if @win == true
      puts "This is a diagonal BINGO!"
    end

  end

end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

test1=BingoScorer.new(horizontal)
test1.check_horizontal


test2=BingoScorer.new(vertical)
test2.check_vertical


test3=BingoScorer.new(right_to_left)
test3.check_diagonal


test4=BingoScorer.new(left_to_right)
test4.check_diagonal


# Reflection

=begin

What concepts did you review in this challenge?

Ans: Iteration using enumerators / without using enumerators


What is still confusing to you about Ruby?

Ans: N/A


What are you going to study to get more prepared for Phase 1?

Ans: When to use enumerators and when to use simple for / while loops

=end