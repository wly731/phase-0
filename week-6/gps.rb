# Your Names
# 1) Victor Wong
# 2) Colette Pitamba

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, suggested_serving_size)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  # raise argument error if item_to_make doesn't exist in library
    unless library.has_key?(item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end

  # serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  remaining_ingredients = suggested_serving_size % serving_size

  #when remaining ingredients = 0, return num_of_ingredients / serving_size of           #item_to_make
  #else
  #return remaining_ingredients

  i=0

  suggested_items = []

  library.each { |food,qty|
      if remaining_ingredients >= qty
        suggested_items[i] = food
        i += 1
      end
    }


  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{suggested_serving_size / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{suggested_serving_size / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggested_items}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 6)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

What did you learn about making code readable by working on this challenge?

Ans: I understand the importance of making code readable to other programmers. In the past I used to write code at my convenience only, and other programmers may found it hard to understand and hence, difficult to work on and improve my code.

Did you learn any new methods? What did you learn about them?

Ans: I learned has_key? and using Unless (a) to substitute IF (!a)


What did you learn about accessing data in hashes?

Ans: I learned that if I iterate through a hash but in the enumerable I just define one variables instead of 2 (k and v), then element being iterated refers to the pair consisting of both the key and the value.


What concepts were solidified when working through this challenge?

Ans: I am now more familiar with the enumerables.


=end

