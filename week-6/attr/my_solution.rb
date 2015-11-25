#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "Calvin"
	end
end


class Greetings
	def hello
		puts "Hello #{NameData.new.name}, it's nicetameetcha!"
	end
end

Greetings.new.hello

# Reflection
# Release 1: 
# What are these methods doing?
# 	These methods are creating a profile using instances of a person. It lists methods to put in values
# 	to change values within the class. 
# How are they modifying or returning the value of instance variables?
# 	It first declares "instance_of_profile" as Profile.new and then it can be used interchangably. It uses
# 	this to call the information. There are methods used to change these values. I don't understand though
# 	why it needs to be profile.new when the information is already inside.

# Release 2:
# What changed between the last release and this release?
# 	The what is age method was commented out. 
# What was replaced?
# 	It was added that attr_reader at the top
# Is this code simpler than the last?
# 	Yes! It's much more clean

# Release 3:
# What changed between the last release and this release?
# 	The change my age method was commented out. 
# What was replaced?
# 	It was added that attr_writer at the top
# Is this code simpler than the last?
# 	Yes!

# Release 4:
# What changed between the last release and this release?
# 	The attr_reader and attr_writer were replaced with attr_accessor
# What was replaced?
# 	attr_accessor at the top
# Is this code simpler than the last?
# 	Yes!

# Reflection
# What is a reader method?
# 	A reader method allows for an instance to be read outside of the class
# What is a writer method?
# 	A writer method allows for an instance to be written to from of the class
# What do the attr methods do for you?
# 	They make much cleaner code than writing a new method everytime an instance needs to be
# 	read or modified outside of a class.
# Should you always use an accessor to cover your bases? Why or why not?
# 	Well it seems nice, but I think in the future we're going to learn there are added utilities
# 	that can be performed in the method, such as modifications or access control. 
# What is confusing to you about these methods?
# 	First thing is why do we always need to use Class.new even though there's nothing new? In our
# 	example here, "Calvin" is already there and we are not changing anything. 






