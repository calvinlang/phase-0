# Numbers to English Words


# I worked on this challenge [myself].
# This challenge took me [6] hours.


# Pseudocode
# Input: Integer
# Output: String of the number
# Steps:
# 	Create a class
# 		Initialize the num Input and a split array of the number
# 		Create a hash in words of 1-13, the multiples of 10, hundred and thousand
# 		Write method to_words that uses case 
# 			calls the hash for values <=13
# 			for values <=19 calls hash that calls the number at position 1 of the array and "teen"
# 			for values <=99 calls hash for array pos 1 and "ty" and hash position 0
# 			for values <999 calls hash for pos 2 and calls hash for array pos 1 and "ty" and hash position 0



# Initial Solution
# class NumberToWords
# 	def initialize(num)
# 		@num = num
# 		@num_split = num.to_s.split("").map(&:to_i).reverse
# 		@number_names = {
# 		1 => "one",
# 		2 => "two",
# 		3 => "three",
# 		4 => "four",
# 		5 => "five",
# 		6 => "six",
# 		7 => "seven",
# 		8 => "eight",
# 		9 => "nine",
# 		10 => "ten",
# 		11 => "eleven",
# 		12 => "twelve",
# 		13 => "thirteen",
# 		20 => "twenty",
# 		30 => "thirty",
# 		40 => "forty",
# 		50 => "fifty",
# 		60 => "sixty",
# 		70 => "seventy",
# 		80 => "eight",
# 		90 => "ninety",
# 		100 => "hundred",
# 		1000 => "thousand"
# 	}
# 	end

	

# 	def to_words
# 		case
# 		when @num <= 13
# 			return @number_names[@num]
# 		when @num <= 19
# 			return @number_names[@num_split[1]] + "teen"
# 		when @num <= 99
# 			return @number_names[@num_split[1] * 10] + " " + @number_names[@num_split[0]]
# 		when @num <= 999
# 			return @number_names[@num_split[2]] + " hundred " + @number_names[@num_split[1] * 10] + " " + @number_names[@num_split[0]]
# 		end
# 	end
# end


# new_num = NumberToWords.new(132)
# p new_num.to_words
# new_num = NumberToWords.new(19)
# p new_num.to_words
# new_num = NumberToWords.new(43)
# p new_num.to_words

# REFACTORED SOLUTION
class NumberToWords
	def initialize(num)
		@num = num
		@num_split = to_s.split("").map(&:to_i)
		@number_names = {
		1 => "one",
		2 => "two",
		3 => "three",
		4 => "four",
		5 => "five",
		6 => "six",
		7 => "seven",
		8 => "eight",
		9 => "nine",
		10 => "ten",
		11 => "eleven",
		12 => "twelve",
		13 => "thirteen",
		20 => "twenty",
		30 => "thirty",
		40 => "forty",
		50 => "fifty",
		60 => "sixty",
		70 => "seventy",
		80 => "eighty",
		90 => "ninety",
		100 => "hundred",
		1000 => "thousand"
	}
	end

# first3 takes any integer and reduces it to the last 3 digits eg 54321 -> 321
	def first3(value) 
		value.to_s.split("").drop(value.to_s.length-3).join("").to_i
	end

# less_than_1000 takes any 3 digit number and converts it to words
	def less_than_1000(hundreds)
		hundreds_split = hundreds.to_s.split("").map(&:to_i)
		case
		when hundreds == 0
			nil
		when hundreds <= 13
			@number_names[hundreds]
		when hundreds <= 19
			@number_names[hundreds_split[1]] + "teen"
		when hundreds <= 99
			if hundreds % 10 == 0
				@number_names[hundreds_split[0] * 10]
			else
				@number_names[hundreds_split[0] * 10] + " " + @number_names[hundreds_split[1]]
			end
		when hundreds <= 999
			if hundreds % 100 == 0
				less_than_1000(hundreds_split[0]) + " hundred"
			else
				less_than_1000(hundreds_split[0]) + " hundred " + less_than_1000(hundreds_split.drop(1).join("").to_i)
			end
		end
	end

	def to_words
		case
		when @num < 1000
			less_than_1000(@num)
		when @num < 1000000
			if @num % 1000 == 0
				less_than_1000((@num/1000).floor) + " thousand"
			else
				less_than_1000((@num/1000).floor) + " thousand " + less_than_1000(first3(@num))
			end
		when @num < 1000000000
			if @num % 1000000 == 0
				less_than_1000(@num/1000000.floor) + " million"
			elsif @num % 1000 == 0
				less_than_1000(@num/1000000.floor) + " million " + less_than_1000(((@num - (@num/1000000).floor * 1000000)/1000).floor) + " thousand "
			else
				less_than_1000(@num/1000000.floor) + " million " + less_than_1000(((@num - (@num/1000000).floor * 1000000)/1000).floor) + " thousand " + less_than_1000(first3(@num))
			end
		when @num == 1000000000
			return "One Billion"
		end
	end

end


new_num = NumberToWords.new(10101001)
p new_num.to_words
new_num = NumberToWords.new(123456789)
p new_num.to_words

# Reflection
# What concepts did you review or learn in this challenge?
# 	This assignment was very tricky and I learned a lot about how complicated something like this can
# 	be. I decided to make it go up to one billion.
# 	I noticed problems with the code. For example it would hand 158 but not 113 because it was a different
# 	set of rule in changing names. Then I realized 100 or any other multiple of 100 1000 or 1000000 didn't 
# 	work either. 
# 	I decided since the real trick is nameing anything under 999 and you could just turn that into a method.
# 	Then for anything greater than 100 I could simply use a recursive and put that back through the same method.
# 	So this was a huge logic puzzle for me. Not necessarily a lot learned about Ruby, but an important lesson
# 	about how every single possibility from 1 to 1 billion has to be accounted for. 
# 	One tricky thing I had to manage was since I was breaking things to threes, how to convert something like
# 	5444333 into just 444. I had to choose whether to make it an array but then what if I had another digit then
# 	the array length would change and it wouldn't work. I used a combination of dividing, flooring, multiplying
# 	and subtracting as well as splitting into an array to make it work.
# 	In terms of ruby concepts, there was a fair bit of recursion used and using methods as objects to complete my
# 	goal.
# What is still confusing to you about Ruby?
# 	One thing I'm wondering is about speed. I looked up some solutions online and all of them use iteration through
# 	and loop hundreds of times and I'm wondering how efficient this is. How do I know which solution would be best
# 	in a computational environment? This is a fairly repeatable task that one wouldn't want using too much computation.
# 	Should this be something taken into account?
#   Also what does one do when it looks like their pseudocode isn't working and they have to throw it out the window?
#   Do they start over?
# What are you going to study to get more prepared for Phase 1?
# 	More challenges like this are going to be important to me to develop the repetition of knowing how to tackle
# 	and realize the complications of an exercise. Also including using methods more tactically for flow and making
# 	them do all the work when called instead of having so many cases. 

