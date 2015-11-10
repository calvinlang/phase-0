# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase
cartmans_phrase = "Screw you guys " + "I'm going home."
# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# This error is occurring in the error.rb file.
# 2. What is the line number where the error occurs?
# It says line 170 which is at the end of the document
# 3. What is the type of error message?
# There is a syntax error where an end was expected
# 4. What additional information does the interpreter provide about this type of error?
# An end was expected
# 5. Where is the error in the code?
# The while loop or the method did not include it's own end syntax
# 6. Why did the interpreter give you this error?
# Because the while loop end was not included the method or the loop was still open throughout the program

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The error occurs on line 35
# 2. What is the type of error message?
# There was an undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# This was a "NameError"
# 4. Where is the error in the code?
# Since the object is not defined, it is an undefined local variable.
# 5. Why did the interpreter give you this error?
# Ruby cannot continue without giving the object a value.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# There is an undefined method for cartman
# 3. What additional information does the interpreter provide about this type of error?
# There is no method assigned to cartman
# 4. Where is the error in the code?
# The error is that since there is no method, ruby cannot run the code
# 5. Why did the interpreter give you this error?
# The error.rb calls for cartman() method to occur but since it is not defined it cannot run and causes an error

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 69
# 2. What is the type of error message?
# Line 69 is trying to input the wrong number of arguments for the method cartmans_phrase
# 3. What additional information does the interpreter provide about this type of error?
# The command gives 1 argument but the method accepts 0 arguments
# 4. Where is the error in the code?
# There is an incorrect number of arguments given to the method
# 5. Why did the interpreter give you this error?
# Since there is an unmatching number of arguments, ruby cannot process the method called with the argument

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end
# 
# cartman_says

# 1. What is the line number where the error occurs?
# Line 88
# 2. What is the type of error message?
# Wrong number of arguments for the method cartman_says
# 3. What additional information does the interpreter provide about this type of error?
# 0 arguments were given when 1 argument was expected
# 4. Where is the error in the code?
# The method cartman_says is supposed to accept 1 argument and 0 were received
# 5. Why did the interpreter give you this error?
# This error occurred because the wrong number of arguments were received so ruby can't process it



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end
# 
# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105
# 2. What is the type of error message?
# Wrong number of arguments for the method cartmans_lie
# 3. What additional information does the interpreter provide about this type of error?
# 1 argument was given when 2 arguments were expected
# 4. Where is the error in the code?
# The method cartmans_lie was supposed to accept 2 arguments but only received 1
# 5. Why did the interpreter give you this error?
# This error occurred because the wrong number of arguments were received so ruby can't process it

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# String can be processed as a number
# 3. What additional information does the interpreter provide about this type of error?
# It is a type of value error
# 4. Where is the error in the code?
# The error is in being unable to conver the string to a fixed number
# 5. Why did the interpreter give you this error?
# Since the string is not an integer or a fix number, it cannot be made to multiply.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# There was a zero division error
# 3. What additional information does the interpreter provide about this type of error?
# Just that the was a division by 0
# 4. Where is the error in the code?
# Numbers can't be divided by 0
# 5. Why did the interpreter give you this error?
# Ruby can't interpret a number being divided by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# Cannot load file
# 3. What additional information does the interpreter provide about this type of error?
# It cannot load the file in the error cartmans_essay.md
# 4. Where is the error in the code?
# The error is that it's trying to load a file that doesn't exist.
# 5. Why did the interpreter give you this error?
# This is calling to load a relative that doesn't exist and this causes an error.


# --- REFLECTION -------------------------------------------------------
# Which error was the most difficult to read?
# 	The second one where the line error was at the end of the Ruby code. This could be a huge 
# 	problem with more code and I guess iterates the important of clean code.
# How did you figure out what the issue with the error was?
# 	The errors are pretty straightforward, they actually tell what the error is. If it is still
# 	ambiguous, we are directed to where the problem occurs and can manage from that.
# Were you able to determine why each error message happened based on the code? 
# 	Yes I was. 
# When you encounter errors in your future code, what process will you follow to help you debug?
# 	First I'll read the error and see what it is. I'll go to the line number and see how that
# 	error corresponds with the code that is written and fix it from there.# 