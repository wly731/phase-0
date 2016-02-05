# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:3
# ============================================================

# p array[1][1][0]
# p array[1][1][1][0]
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================

# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================

# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
=begin
number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! { |element|

  if element.kind_of?(Array)

    element.map! {|inner|
      inner +=5
    }

  else
  element += 5
  end
  }

p number_array
=end


# Bonus:

=begin

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element|

  if element.kind_of?(Array)

    element.map! {|inner|

      if inner.kind_of?(Array)

        inner.map! { |more_inner|
          more_inner += "ly"
          }

      else
        inner += "ly"
      end

    }
  else
    element
  end
}

p startup_names

=end

# Refactored solution



startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten.map! { |element| element = element.concat("ly")}

# QUESTION!! Inside the block if I substitute [element = element.concat("ly")] with [element += "ly"], it won't work...and I cannot figure out why.

p startup_names



# Below is a case where [inner += "ly"] works:

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! { |element|

#   if element.kind_of?(Array)
#     element.flatten.map! {|inner| inner += "ly" }
#   else
#     element
#   end

# }


=begin

What are some general rules you can apply to nested arrays?

Ans: I use to count the nested arrays from outside to inside.

What are some ways you can iterate over nested arrays?

Ans: We can use .flatten to unfold all inner arrays, then iterate the single dimension array with an .each method.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

Ans: I learned a new method called .flatten from my partner. This is a great option since we don't have to check if there is any inner array. Using .flatten just simply unfold all the nested structures (if there is any inner arrays), and turn it into a single dimension array so that it is easier to work with.



=end
