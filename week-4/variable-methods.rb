# Full name greeting: Write a program that asks for a person's first name, then middle, then last. 
# Finally, it should greet the person using their full name.
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name"
last_name = gets.chomp

puts "Welcome #{first_name} #{middle_name} #{last_name}!"

# Bigger, better favorite number: Write a program that asks for a person's favorite number. 
# Have your program add 1 to the number, and then suggest the result as a bigger and better number.
puts "What is your favorite number?"
favorite_number = gets.chomp
favorite_number_bigger = favorite_number.to_i + 1
puts "Wouldn't you rather #{favorite_number_bigger}? It's bigger!" 

#Reflection:
#How do you define a local variable?
#	There are many ways but in this case we used a method. We can create a local variable that
#	accepts one or more parameters to output/return strings or values.
#How do you define a method?
#	A method is a function that can take in arguments and output a local variable. For example if
#	we wanted to create a method that added 5, we would input an argument of a number like 7 and 
#	7+5 which equals 12 will be the local variable.
#What is the difference between a local variable and a method?
#	A local variable is the value or output that is local to a method. If we have a method that
#	doubles an argument, that number is the local variable.
#How do you run a ruby program from the command line?
#	$ruby file_name.rb
#How do you run an RSpec file from the command line?
#	$rpec file_name.rb
#What was confusing about this material? What made sense?
#	Well I watch the video on RSPEC and I looked at the data and I'm still not sure what is going on.
#	I am still a little confused on when to use + and +=. On my_solution for the math methods, both
#	worked so I'm not sure which is supposed to be used when. Otherwise the exercises seemed pretty straigforward.