=begin
input: A cohort array with all the student names. An integer which is the desire group size

output: A nested array with all student split into different accountability groups

steps:

count the number of people in the cohort

shuffle the name list

define 2 group sizes. A big group means a group with the desired group size, a small group means a group with desired group size - 1.

Calculate the group modulus to check how many people left if we want all students split into groups with equal size.

number of smaller size group needed = group size - group modulus.

number of bigger group that has to be cut down into a smaller size group = group size - group modulus - 1

IF group_modulus NOT EQAUL TO 0, which means some big size group have to be cut down

    num_of_big_group = (number_of_people / group_size) - (group_size-group_modulus-1)
    num_of_small_group= group_size - group_modulus

ELSE, which means all student can be evenly split into big size groups

    num_of_big_group = number_of_people / group_size



=end

sea_lions = ["Alivia Blount", "Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Kenton Lin","Kevin Serrano","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

group_list = []

def create_group (name_list,group_size)
  number_of_people = name_list.count
  name_list_shuffled = name_list.shuffle
  num_of_small_group = 0
  acc_group_arr = []
  group_num = 1

  group_modulus = number_of_people % group_size #4 or 5 or anything
  if group_modulus != 0
    num_of_big_group = (number_of_people / group_size) - (group_size-group_modulus-1)
    num_of_small_group= group_size - group_modulus
  else
    num_of_big_group = number_of_people / group_size
  end

  name_list_for_big_group = name_list_shuffled.take(group_size*num_of_big_group)

  name_list_for_small_group = name_list_shuffled.drop(group_size*num_of_big_group)

  name_list_for_big_group.each_slice(group_size) { |name|
    acc_group_arr[group_num-1] = name
    group_num += 1
  }

  name_list_for_small_group.each_slice(group_size-1) { |name|
    acc_group_arr[group_num-1] = name
    group_num += 1
  }

  p "Total number of people: #{number_of_people}"
  p "Desired group size: #{group_size}"
  p "Total number of groups: #{num_of_big_group + num_of_small_group}, with #{num_of_big_group} big groups and #{num_of_small_group} small groups"
  p "Grouping is as follows:"
  p acc_group_arr
  return acc_group_arr

  # p group_modulus
  # p num_of_big_group
  # p num_of_small_group
  # p name_list_for_big_group.count
  # p name_list_for_small_group.count

end

def group_retrieve(group_list,group_no)

  p "Group #{group_no} has the following members:"

  group_list[group_no-1].each { |name|
    p name
  }

end

group_list = create_group(sea_lions,5)

group_retrieve(group_list, 1)
group_retrieve(group_list, 2)

=begin

What was the most interesting and most difficult part of this challenge?

Ans: The most interesting part is the same as the most challenging part, which is I have to come up with a logic/algorithm, to calculate how many big groups and small groups are needed based on the group modulus, because we cannot have 1 group with 1 people only while the rest of the group have 5 people.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Ans: Yes, as I am practicing with more challenging questions, I also learn how to break the problem down more effectively.

Was your approach for automating this task a good solution? What could have made it even better?

Ans: Although I can solve this task, I feel like my solution is not the best and most effective one. While it works well on the user end, one improvement point is that I can make the code more readable to programmers. I am not sure if other programmers can understand my algorithm in deciding how many big groups and small groups are needed.

What data structure did you decide to store the accountability groups in and why?

Ans: I decided to use Array, because the group number are in ascending order, so that it makes better sense to use ordered index number to store the accountability groups in an array.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Ans: I learned to use some new Ruby methods such as:
.shuffle
.each_slice(size)

=end