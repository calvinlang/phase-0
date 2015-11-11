def count_between(list_of_integers, lower_bound, upper_bound)
  array_position = 0
  number_of_matches = 0
  while array_position < list_of_integers.length
  	if list_of_integers[array_position] >= lower_bound && list_of_integers[array_position] <= upper_bound
  		number_of_matches += 1
  	end
  	array_position += 1
  end
  return number_of_matches
end

puts count_between([1,2,3], 0, 100)      # => 3
puts count_between([-10, 1, 2], 0, 100)  # => 2
puts count_between([10, 20, 30], 10, 30) # => 3
puts count_between([], -100, 100)        # => 0
puts count_between([0], 0, 0)            # => 1