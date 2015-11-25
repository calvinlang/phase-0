# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# p number_array.map { |x| element.map { |y| y + 5} if x.kind_of? Array }

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map {|inner| inner + 5}
  else
	element + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# I decided to turn this into a method so that it could call on itself everytime there is an array within
# and array and this way it will run infinitely no matter how nested!

def inner_array_ly(inner)
	inner.map! { |value|
  	if value.kind_of?(Array)
    		inner_array_ly(value)
  	else
			value.to_s + "ly"
  	}
  end
end


inner_array_ly(startup_names)
p startup_names
# this puts ["bitly", ["findly", "fastly", ["optimizely", "scopely"]]]

# What are some general rules you can apply to nested arrays?
# 	Arrays will always have the right syntax attached to each nested array, you have to keep with syntax and
# 	it will continue to follow the same scheme
# What are some ways you can iterate over nested arrays?
# 	You can iterate over an array but it won't iterate over the rest of the arrays nested within. So if it is an
# 	array that is nested within and array you have to iterate over that array as well.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option
# 	YES! The bonus question had an array with nested array within another nested array. This is 3 layers of arrays nested.
# 	So instead of writing an array.map 3 times I simply made it into a method that would iterate over an array and if the
# 	array value was also an array it would simply call on its own method again. So I believe this will work with any number
# 	of nests within an array!