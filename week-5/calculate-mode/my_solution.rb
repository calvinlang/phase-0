# Calculate the mode Pairing Challenge

# I worked on this challenge with: Joe Plonkster

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Input is an array of numbers or strings
# What is the output? (i.e. What should the code return?)
# Out put should be a single string or number that is the most common occurring value
# What are the steps needed to solve the problem?
# Fine out how often each occurs and show the ones that occur most often.

# 1. Create a hash to store the number of times it occurs then sell it

# Iterate a method called mode that takes the most repeated value in an array


# 1. Initial Solution Pseudocode
# Call empty hash
# Each value in an array will be added to an hash and the key will be 1. And if it's already there it's +1.
# Call a counting value
# Call a var to hold value itself
# Use an each loop to do and if statement, if the value is larger than var is the value

# This pad is reserved for a student in the Chorus Frogs cohort. 

  

# def mode(array)
#   mode_hash = Hash.new
  
#   counter = 0
#   while counter < array.length do 
#     mode_hash[array[counter]] = 0
#     counter += 1
#   end
  
#   counter = 0
#   while counter < array.length do 
#       mode_hash[array[counter]] += 1
#     counter += 1
#   end

#   mode_hash = mode_hash.sort_by{ |k, v| v }.to_h
#   mode_hash = mode_hash.to_a.reverse.to_h
  
#   key = []
#   occurences = 0
#   mode_hash.each do | x , y |
#     if occurences <= y
#       occurences = y
#       key.push(x)
#     end
#   end
#   return key.sort
# end




# 3. Refactored Solution

def mode(array)
  mode_hash = Hash.new

  array.each { |x| mode_hash[x] = 0 }
  array.each { |x| mode_hash[x] += 1 }
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



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
#   We took the suggestion a built a hash then added the numer of each element to the array. Then we sorted the hash
#   by the largest value and added it to the array, more than one if there was an equal number of values.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#   I haven't done 5.2 yet but pseudocode did help put us on the same page. It is a good way to say, "Okay, here is What
#   we will do."
# What issues/successes did you run into when translating your pseudocode to code?
#   There were a couple. We tried to directly create a hash with the key and the values but since the values were to be
#   determined after we had to build the hash first. The next big problem was that when we created a new array with the
#   desired values they would show the lower values as well. The trick was to sort the hash by value and then add to the
#   array. And then the biggest problem was we didn't realize we had to keep converting it back to a hash. 
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#   We used while loops the first time around because my pair wasn't as comfortable with each and while loops. So we used both as way to
#   familiarize ourselves with both methods.
