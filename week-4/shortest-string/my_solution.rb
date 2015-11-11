# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  shortest = list_of_words[0]
  array_number = 1
  while array_number < list_of_words.length
  	if list_of_words[array_number].length < shortest.length
  		shortest = list_of_words[array_number]
  	end
  	array_number += 1
  end
  return shortest
end

