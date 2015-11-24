# Your Names
# 1) Calvin Lang
# 2) Kerry M

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  # This is a hash with the menu items and the order quantities necessary
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  # This is an each loop that iterates through the hash and designates a value to the item_to_make using the error counter to know if it matches the items in the hash
  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #      error_counter += -1
  #   end
  # end
  
  # raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.key(item_to_make)

  #This block below should raise an error arguement if the loop runs all items in hash and doesnt find a match.
  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end
  #line 30 sets a variable equal to the value of the library hash, 
  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity.to_i % serving_size.to_i
  #line 31 uses the modulo method calculate how many leftover ingrediant after.
  
  # Gives different output for different cases to give what can be made
  case serving_size_mod
    when 0
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    when 6
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. You can also make 1 cake and 1 cookie."
    when 5
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. You can also make 1 cake."
    else
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. You can also make #{serving_size_mod} cookies."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 
#  Reflection
# What did you learn about making code readable by working on this challenge?
#   Readablility is important because we're going to be in positions where collaboration is a crucial
#   part of the development dynamic. I learned that it's important for names to make sense. Error_code
#   is good, but it really didn't make sense to me until I was going through the code. 
# Did you learn any new methods? What did you learn about them?
    # I learned that I could use a counter to give a true boolean if something doesn't exist in a hash. I
    # haven't had to do it yet but I can forsee myself needing that.
# # What did you learn about accessing data in hashes? 
#     I didn't learn much from this example but using an error counter is a clever way of determining if
#     something doesn't exist in a hash. It isn't good though because then you can't change the number
#     of values in a hash.
# What concepts were solidified when working through this challenge?
    # This added some familiarity with hashes. It was nice because it was like using a hash in the way
    # we have been used to using arrays.

