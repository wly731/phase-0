# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # Your code goes here!
  if list_of_words[0]!=nil
    shortest_length = list_of_words[0].length
    shortest_word = list_of_words[0]

    list_of_words.each do |word|
      if word.length < shortest_length
        shortest_length=word.length
        shortest_word = word
      end
    end
  end
    p shortest_word

end