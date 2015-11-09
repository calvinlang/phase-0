puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name"
last_name = gets.chomp

puts "Welcome #{first_name} #{middle_name} #{last_name}!"

puts "What is your favorite number?"
favorite_number = gets.chomp
favorite_number_bigger = favorite_number.to_i + 1
puts "Wouldn't you rather #{favorite_number}? It's bigger!"