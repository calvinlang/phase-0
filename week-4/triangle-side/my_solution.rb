# I worked on this challenge [by myself, with: Michael].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a.is_a?(Numeric) && b.is_a?(Numeric) && c.is_a?(Numeric)
 	 if a > b + c || b > a + c || c > a+b 
 	 	return false
	 else
	 	if a == 0 || b == 0 || c == 0
	 		return false
	 	else
	 		return true
	 	end
	 end
 else
	return false
end



end

puts valid_triangle?(3,4,5)
puts valid_triangle?("hello",6,3)
puts valid_triangle?(10,6,3)
puts valid_triangle?(0,6,3)