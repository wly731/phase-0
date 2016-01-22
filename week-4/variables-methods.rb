puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp

puts 'Hi nice to meet you '+first_name+' '+middle_name+' '+last_name

puts 'What\'s your favorite number?'
favnum = gets.chomp
biggernum = favnum.to_i + 1
biggernum = biggernum.to_s


puts biggernum + ' is a bigger and better number!'

=begin

1. How do you define a local variable?

a local variable can be defined as the parameter of a method, for example:

def method (local-variable-1,local-variable-2)
  method code here...
end

2. How do you define a method?

def method (local-variable-1,local-variable-2)
  method code here...
end

3. What is the difference between a local variable and a method?

a local variable is an object, which is defined and can only be used in a method. A method is a specific action that acts on the objects.

4. How do you run a ruby program from the command line?

Type "ruby your-file-name-here.rb"

How do you run an RSpec file from the command line?

Type "rspec your-rspec-file-name-here.rb"

What was confusing about this material? What made sense?

The only thing that is confusing to me is that I am not sure what is the purpose of the RSpec file.

link to challenge 4.3.1: https://github.com/wly731/phase-0/blob/master/week-4/address/my_solution.rb

link to challenge 4.3.2: https://github.com/wly731/phase-0/blob/master/week-4/math/my_solution.rb

=end