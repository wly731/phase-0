#Attr Methods

# I worked on this challenge by myself

# I spent 1 hour on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
    @name = "Victor Wong"
  end

end


class Greetings

  def hello
    puts "Hello #{NameData.new.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello


# Reflection

=begin
Release 1:
What are these methods doing?

Ans:
.inialize
set the profile age = 27, name = "Kim" and occupation = "Cartographer"

.print_info
prints age, name and occupation

.what_is_age
returns age

.change_my_age=(new_age)
changes the age by replacing it with new_age, then returns the new age

.what_is_name
returns name

.change_my_name=(new_name)
changes the name by replacing it with new_name, then returns the new name

.what_is_occupation
returns occupation

.change_my_occupation=(new_occupation)
changes the occupation by replacing it with new_occupation, then returns the new occupation


How are they modifying or returning the value of instance variables

Ans:
For example, having defined the methods:

def change_my_age=(new_age)
    @age = new_age
  end

the instance variable @age can be changed by:
Profile.change_my_age = 28

instead of the normal way which is:
Profile.change_my_age(28)

Release 2:

What changed between the last release and this release?

Ans: .what_is_age method is removed

What was replaced?

Ans: "attr_reader :age" is added under the Profile class

Is this code simpler than the last?

Ans: Yes


Release 3:

What changed between the last release and this release?

Ans: .change_my_age method is removed

What was replaced?

Ans: "attr_writer :age" is added under the Profile class

Is this code simpler than the last?

Ans: Yes

What is a reader method?

Ans: a reader just returns a value or state outside of the class, but does not change it.

What is a writer method?

Ans: a writer can change the value of the variable outside of the class, but it is not readable.

What do the attr methods do for you?

Ans: They allow me to get access to the instance variables (read or write) without having to design another method to do do.


Should you always use an accessor to cover your bases? Why or why not?

Ans: No, just to safeguard against accidentally giving other methods and classes too much access to the inner workings of others. Sometimes we don't want some methods to change some instance variables, or else it will cause serious debugging issues.

What is confusing to you about these methods?

Ans: There is no particular concept that confuses me so far.

=end