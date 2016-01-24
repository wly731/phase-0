# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  longest_side = a
  if (b > longest_side)
    longest_side = b
  end
  if (c > longest_side)
    longest_side = c
  end

  if (longest_side < a+b+c-longest_side)
    p true
  else
    p false
  end

end
