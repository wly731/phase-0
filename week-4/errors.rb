# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# Ans: errors.rb

# 2. What is the line number where the error occurs?
# Ans: line 175

# 3. What is the type of error message?
# Ans: a syntax error

# 4. What additional information does the interpreter provide about this type of error?
# Ans: Unexpected end-of-input, the interpreter is expecting an "end" keyword

# 5. Where is the error in the code?
# Ans: Although it shows that the error occurs in line 175, the actual error occurs in line 15, where the "end" keyword is missing for the method.

# 6. Why did the interpreter give you this error?
# Ans: A missing "end" for the method (because the only "end" there is for closing the while loop)

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# Ans: line 41
# 2. What is the type of error message?
# Ans: Name error
# 3. What additional information does the interpreter provide about this type of error?
# Ans: undefined local variable or method
# 4. Where is the error in the code?
# Ans: error occurs on the definition of south_park, it should be either "south_park = something" or "def south_park() end"
# 5. Why did the interpreter give you this error?
# Ans: If south_park is a variable, then it should be defined in advance, e.g. south_park = 1. If it is a method, then it should be defined in advance too
# e.g. def south_park() end
# However, simply typing "south_park" here will cause confusion to the computer since it is not defined yet.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Ans: line 58
# 2. What is the type of error message?
# Ans: No method error
# 3. What additional information does the interpreter provide about this type of error?
# Ans: undefined method "cartman"
# 4. Where is the error in the code?
# Ans: error occurs on the definition of the method cartman, it should be "def cartman() end"
# 5. Why did the interpreter give you this error?
# Ans: A method cannot be used without defining it in advance.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# Ans: line 73
# 2. What is the type of error message?
# Ans: Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Ans: It says wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# Ans: the error occurs inside the parenthesis of the method cartmans_phrase
# 5. Why did the interpreter give you this error?
# Ans: In the definition of this method - cartmans_phrase, it is not supposed to take in any input. This method simply outputs the phrase "I'm not fat; I'm big-boned!". Hence, an error occurs when there is a parameter given to this method when you are trying to call it.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# cartman_says ()

# 1. What is the line number where the error occurs?
# Ans: line 96
# 2. What is the type of error message?
# Ans: Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Ans: wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# Ans: the error occurs after calling the method - cartman_says.
# 5. Why did the interpreter give you this error?
# Ans: Since this method is defined to take in a parameter to process, and in line 96 when the method is called, the parenthesis and the parameter is missing.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Ans: line 117
# 2. What is the type of error message?
# Ans: argument error
# 3. What additional information does the interpreter provide about this type of error?
# Ans: Wrong number of arguments (1 for 2
# 4. Where is the error in the code?
# Ans: The error occurs in line 117, inside the parenthesis of the method.
# 5. Why did the interpreter give you this error?
# Ans: The method is defined and supposed to take in 2 parameters for processing. However, when the method is called in line 117, only 1 parameter is inside the parenthesis.

# --- error -------------------------------------------------------

"Respect my authoritay!"*5

# 1. What is the line number where the error occurs?
# Ans: Line 132
# 2. What is the type of error message?
# Ans: Type error
# 3. What additional information does the interpreter provide about this type of error?
# Ans:String can't be coerced into Fixnum
# 4. Where is the error in the code?
# Ans: the error occurs right after "*"
# 5. Why did the interpreter give you this error?
# Ans: A string can be multiplied by number, but a number cannot be multiplied by a string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Ans: Line 147
# 2. What is the type of error message?
# Ans: Zero Division error
# 3. What additional information does the interpreter provide about this type of error?
# Ans: it says "divided by 0"
# 4. Where is the error in the code?
# Ans: the error occurs on the right hand side of the equation
# 5. Why did the interpreter give you this error?
# Ans: You cannot divide any number by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# ans: line 163
# 2. What is the type of error message?
# ans: Load error
# 3. What additional information does the interpreter provide about this type of error?
# ans: it says "cannot load such file"
# 4. Where is the error in the code?
# ans: the error occurs inside the double quotation mark.
# 5. Why did the interpreter give you this error?
# ans: require_relative allows you to load a file that is relative to the file containing the require_relative statement. Since there is no such file in my computer called "cartmans_essay.md", it is normal to render this error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?
Ans: The second one, where the error message is showing the last line number which is quite confusing.

How did you figure out what the issue with the error was?
Ans: I thought there should be some issues regarding improper ending of a method because the error message is showing that the error is on the last line of the code. Then I realized that there is a missing "end"

Were you able to determine why each error message happened based on the code?
Ans: Yes

When you encounter errors in your future code, what process will you follow to help you debug?
Ans: I will first identify which line has an error and what type of error is it. Then, I will read the description of the error and try to search online if I do not understand the description.

=end