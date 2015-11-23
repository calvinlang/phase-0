# Pad an Array

# I worked on this challenge [by myself, with: Thomas Huang]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# 	An array, the minimum length of the output array, and the filler
# What is the output? (i.e. What should the code return?)
# 	An array at least the length of min_size and filled with the value until full
# What are the steps needed to solve the problem?
# 	Create Array.new
# 	make new array match array in argument
# 	For the (array.length - min-size).times push value to the new array



# 1. Initial Solution

# def pad!(array, min_size, value = nil) #destructive
#  if min_size <= array.length
#  	array
#  else
#  	(min_size - array.length).times {array.push(value)}
#  end
#  array
# end


# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
#   padded_array = []
    
#   array.each do |i|
#       padded_array << i
#    end
  
#   if array.length >= min_size
#     return padded_array
#   else
#    padded_array.push(value) until padded_array.length >= min_size
#   end
#   padded_array
    
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 array if min_size <= array.length
 (min_size - array.length).times {array.push(value)}
 array
end


def pad(array, min_size, value = nil) #non-destructive
  padded_array = []
  array.each {|i| padded_array << i }
  padded_array if array.length >= min_size
  (min_size - padded_array.length).times {padded_array.push(value)}
  padded_array    
end

# 4. Reflection
Were you successful in breaking the problem down into small steps?
	Yes, I had a clear idea of how to breaking it down into a few small steps and it worked well.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
	I was but I had a huge problem with the non-destructive method. Even though I created a new array by "new_array = array"
	it would still alter the original array! The coding itself took only 15 mins but this problem alone I spent well over an
	hour and ended up using different loops to make the new array.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	No, as mentioned my non-destructive method kept changing the original array even though I created a new array and modified
	that. What I ended up doing was changing to several loops to finally get it to doing that. But then it would push the value
	to the new array 2x times!
When you refactored, did you find any existing methods in Ruby to clean up your code?
	I used each loops and .times because it would allow me to run a loop only a certain number of times and
	put the information all on one line.
How readable is your solution? Did you and your pair choose descriptive variable names?
	For the non-destructive I used padded_array because it was representative of that array we wanted to return.
What is the difference between destructive and non-destructive methods in your own words?
	Destructive methods alter the original arguments passed into it to modify. Non-destructive methods leave it as it is.
	
