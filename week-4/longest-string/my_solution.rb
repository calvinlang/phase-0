# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  longest = list_of_words[0]
  array_number = 1
  while array_number < list_of_words.length
  	if list_of_words[array_number].length > longest.length
  		longest = list_of_words[array_number]
  	end
  	array_number += 1
  end
  return longest
end
