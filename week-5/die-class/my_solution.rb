# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: The number of sides wanted on a dice (or the range of random digits)
# Output: The output will be a random integer based on the number of sides of the die
# Steps: 


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#     	raise ArgumentError.new("Must have more than 1 side")
#     end
#     	@sides = sides

#   end

#   def sides
#     @sides
#   end

#   def roll
#     return 1 + rand(@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Must have more than 1 side") if sides < 1
    @sides = sides
  end

  attr_reader :sides

  def roll
    1 + rand(@sides)
  end
end





# 4. Reflection
# What is an ArgumentError and why would you use one?
# 	ArgumentError is an error that is presented to the user or developer to show when there is a problem of the argument
# 	value. This gives the user an idea of what the problem is and if they want to continue or move past it.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# 	I used the raise method for the argument error which can be used to raise and exemption to halt the program. I also used
# 	attr_reader which can be used to read a value within a class. I didn't have any problems with this process as I followed
# 	the video. 
# What is a Ruby class?
# 	A class is a set of standards for a type of value decided by the developer. It can have its own instance
# 	instance classes and class variables. These dictate the behavior of this class. The methods and variables
# 	within are then class specific but are as a group able to pass information to one another aand I think puss
# 	from the outside.
# Why would you use a Ruby class?
# 	If I wanted to group certain information together it would be ideal. There are many times in ruby that
# 	one will have objects that as a group needs to be handled the same way, but seperate from alll other
# 	types of objects. 
# What is the difference between a local variable and an instance variable?
# 	Local variables are only available within a method itself. Instance variables can be used anywhere within the
# 	class that it exists.
# Where can an instance variable be used?
# 	Anywhere within the class the instance variables can be called. Even if called within a method.