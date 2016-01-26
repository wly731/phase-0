# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  # Your code goes here
  product = 1
  while number > 0 do
    product = product*number
    number = number - 1
  end
  p product
end