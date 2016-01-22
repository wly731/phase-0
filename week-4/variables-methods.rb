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
How do you define a local variable?

How do you define a method?

What is the difference between a local variable and a method?

How do you run a ruby program from the command line?

How do you run an RSpec file from the command line?

What was confusing about this material? What made sense?

=end