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