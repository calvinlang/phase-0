# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# input: Integer
# output: Boolean
# Steps:	
# 	Call a method that accepts the argument num
# 	Use while loop with counter
# 		fibonacci = counter-1 + counter-2
# 		if fibonacci is greater than the number then return false
# 		if fibonacci is the number return true
# 		if it's neither then add 1 to the counter
	


# Initial Solution

# def is_fibonacci?(num)
# 	if num == Integer do 
# 		return "Integer"
# 	end
# end

def fibonacci(num)
   num <= 1 ? num :  fibonacci( num - 1 ) + fibonacci( num - 2 ) 
end
puts fibonacci( 10 )

# p is_fibonacci?(21)
# p is_fibonacci?(20)

# Refactored Solution







# Reflection