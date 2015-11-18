# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# 	The input will be a "value" from 1 to any number 10 digits long
# What is the output? (i.e. What should the code return?)
# 	The output will be a number with a comma between every third digit from the decimal
# What are the steps needed to solve the problem?
# 	First return value if it's less than 1000
# 	Split value in an array and reverse, store as new variable
# 	Figure out number of commas with length / 3
# 	Use while loop to add a comma to array at every 3rd position
# 	Return array reversed and joined



# 1. Initial Solution

def seperate_comma(value)
	splitted = value.to_s.split("").reverse
	commas = splitted.length / 3
	
	if splitted.length <= 3
		return value
	else
		if splitted.length % 3 == 0
			commas -= 1
			while commas > 0
				splitted.insert(3 * commas, ",")
				commas -= 1
			end
		else
			while commas > 0
				splitted.insert(3 * commas, ",")
				commas -= 1
			end
		end
	end
	return splitted.join("").reverse
end


# 2. Refactored Solution

def seperate_comma(value)
	value if value < 1000
	splitted = value.to_s.split("").reverse
	commas = splitted.length / 3
	if splitted.length % 3 == 0
		commas -= 1
		while commas > 0
			splitted.insert(3 * commas, ",")
			commas -= 1
		end
	else
		while commas > 0
			splitted.insert(3 * commas, ",")
			commas -= 1
		end
	end
	return splitted.join("").reverse
end


# 3. Reflection