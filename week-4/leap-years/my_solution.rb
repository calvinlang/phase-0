# Leap Years

# I worked on this challenge [by myself, with: Michael Du].

def leap_year?(year)
	if year.is_a?(Integer)
		if year % 4 == 0 
			if year % 100 == 0
				if year % 400 == 0
					return true
				else
					return false
				end
			else
				return true
			end
		else
			return false
		end
	else
		return false
	end
end

# Your Solution Below

puts leap_year?(2000)
puts leap_year?(2005)
puts leap_year?(1994)

