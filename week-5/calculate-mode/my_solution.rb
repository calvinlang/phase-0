# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Iterate a method called mode that takes the most repeated value in an array
# Call empty hash
# Each value in an array will be added to an hash and the key will be 1. And if it's already there it's +1.

# 1. Initial Solution
# Call a counting value
# Call a var to hold value itself
# Use an each loop to do and if statement, if the value is larger than var is the value

# This pad is reserved for a student in the Chorus Frogs cohort. 

# Pseudocode
  

def mode(array)
  mode_hash = Hash.new
  
  counter = 0
  while counter < array.length do 
    mode_hash[array[counter]] = 0
    counter += 1
  end
  
  counter = 0
  while counter < array.length do 
      mode_hash[array[counter]] += 1
    counter += 1
  end

  mode_hash = mode_hash.sort_by{ |k, v| v }.to_h
  mode_hash = mode_hash.to_a.reverse.to_h
  
  key = []
  occurences = 0
  mode_hash.each do | x , y |
    if occurences <= y
      occurences = y
      key.push(x)
    end
  end
  return key.sort
end



print mode([1, 2, 3, 4, 5, 5, 7])
print mode([4, 4, 5, 5, 6, 6, 6, 7, 5])
print mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])



# 3. Refactored Solution




# 4. Reflection