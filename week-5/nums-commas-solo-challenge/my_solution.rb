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

# def seperate_comma(value)
# 	splitted = value.to_s.split("").reverse
# 	commas = splitted.length / 3
	
# 	if splitted.length <= 3
# 		return value
# 	else
# 		if splitted.length % 3 == 0
# 			commas -= 1
# 			while commas > 0
# 				splitted.insert(3 * commas, ",")
# 				commas -= 1
# 			end
# 		else
# 			while commas > 0
# 				splitted.insert(3 * commas, ",")
# 				commas -= 1
# 			end
# 		end
# 	end
# 	return splitted.join("").reverse
# end


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

# What was your process for breaking the problem down? What different approaches did you consider?
# 	The first thing I thought about is where are commas anyways. I figured that commas are always 3 digits
# 	from the decimal. So I thought the best thing to do would be to reverse it and put commas at every 3rd digit. 
# 	And then I thought about how many commas there would be. Another approach I considered was that I would take 
# 	the number of digits and the first comma would be inserted at the position of length % 3. I decided to use an array
# 	because I could iterate through the array.
# Was your pseudocode effective in helping you build a successful initial solution?
# 	Yes! I was surprised. I am very much the type that just wants to jump in and do it. The pseudocode only took me a
# 	few minutes because I knew what I wanted to do. And the code didn't work exactly as expected. So I spent most of the
# 	time adjusting my variables to make the return values correct. There was a problem where if the number was 7 digits
# 	there would be an additional comma at the begining of the number.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# 	I think I have no idea how to find things for refactoring. I watched the recommended video but I really just have
# 	no idea how to find out how to find out what can be done to refactor something. I tried using slice and step to 
#   affect an array but I kept getting endless undefined orders. I had to give up after spending an hour.
# How did you initially iterate through the data structure?
# 	I reversed it and split it into an array. Then I used a while loop to go through the array to make it include the commas.
# Do you feel your refactored solution is more readable than your initial solution? Why?
#   It isn't much more readable. All I did was change some of the do's to {} but I would love to implement some other functions!
#   I tried .slice and .step but I just couldn't get them to work.
