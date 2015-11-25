# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: answer
# Output: higher, lower, correct
# Steps: 
	# Generate a random integer
	# Iterate an ask method
	# gets.chomp
	# 	if high puts too high, run ask method
	# 	if low puts low, run ask method
	# 	if correct puts you're correct!



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer 
#   end



#   def guess(guess)
#   	if guess > answer
#   		@correct = false
#   		return :high
#   	elsif guess < answer
#   		@correct = false
#   		return :low
#   	else
#   		@correct = true
#   		return :correct
#   	end
#   end

#   def solved?
#   	if @correct == true
#   		return true
#   	else
#   		return false
#   	end
#   end

#   def answer
#   	@answer
#   end

# end

# GuessingGame.new(10)


# Refactored Solution

class GuessingGame
  attr_reader :answer
  def initialize(answer)
    @answer = answer 
  end

  def guess(guess)
  	if guess > answer
  		@correct = false
  		return :high
  	elsif guess < answer
  		@correct = false
  		return :low
  	else
  		@correct = true
  		return :correct
  	end
  end

  def solved?
  	if @correct == true
  		return true
  	else
  		return false
  	end
  end
end




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#     Instance variables and behaviors have all the behaviors of a real world objects except for how they are organized
#     and called. Since instance variables are stored in classes they can only be accessed through the class which has
#     a lot of value for organizing and increasing their versatility.
# When should you use instance variables? What do they do for you?
#   Software is expansive with many moving parts. I like the analogy used in the video for nested data because it used
#   a house, which I feel is an analogy that can be translatable to the value of instance variables. When we're building
#   a house, we have the interiors, but we also have different kinds of constructs like the plumbing and electricity. We
#   want different classes for all of these things because they are different! 
#   Another important aspect is they make variables available to the whole class unlike local variables. This makes it
#   useful for calling when outside of the method itself.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#   At its core, Ruby is always only evalutating whether something is true or not. On some level, everything is a modification
#   of an if statement with actions. Good flow control is about managing true and false in a sensible way. A lot of this
#   includes readability and removal of unneccessary code. 
# 	I spent way too much time on this because of one RSPEC that wouldn't pass. And it drove me insane. I spent 90
	# mins manipulating everything I could until I realized it was because my return value was above my @correct = false
	# value. FRUSTRATION.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	# Symbols are nice because they don't have to be declared and cannot be manipulated. In this sense we don't have to
	# attach it to any designation like a variable. It is shown as a string and it can save a lot of space.