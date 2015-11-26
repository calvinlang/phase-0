# Class Warfare, Validate a Credit Card Number

# Example given 4563 9601 2200 1999
# Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
# Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
# Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
# Step 3: 70 (total above) % 10 == 0
# Step 4: Profit

# array [4,5,6,3,9,6,0,1,2,2]

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number (16-digits) with spaces
# Output: Boolean (True/False)
# Steps:
=begin
1. Define initialize that takes a string
2. Convert string into array, and remove any empty spaces
3. Raise argument error if array length is not equal to 16
4. Define check_card method
5. If the array position is even, multiply it by two
6. Rejoin array, and resplit, to account for two digit numbers
7. Sum up all the elements, and divide by 10. If remainder = 0, then card is valid
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card)
#     @card = card.to_s.split('').delete_if {|x| x == ' '}
#     raise ArgumentError if @card.length != 16
#   end

#   def check_card
#     @step_1 = @card.map.with_index do | num , position | 
#       if position.even? 
#         num = num.to_i * 2
#       else
#         num.to_i
#       end
#     end
#     @step_2 = @step_1.join().split("").map(&:to_i)
#     @total = @step_2.inject(:+)
#     return true if @total % 10 == 0
#     return false if @total % 10 != 0
#   end 
# end


# Refactored Solution

# class CreditCard
#   def initialize(card)
#     @card = card.to_s.split('').delete_if {|x| x == ' '}
#     raise ArgumentError if card.length != 16
#   end

#   def check_card
#     step_1 = @card.map.with_index do | num , position | 
#       position.even? ? num = num.to_i * 2 : num.to_i
#     end
#     total = step_1.join().split("").map(&:to_i).inject(:+)
#     total % 10 == 0 ? true : false
#   end 
# end

class CreditCard
  def initialize(card)
    @card = card.to_s.split('').delete_if {|x| x == ' '}.map(&:to_i)
    raise ArgumentError if @card.length != 16
  end
  def check_card
    step_1 = @card.map.with_index { |num , posi| posi.even? ? num *= 2 : num }
    @total = step_1.join().split("").map(&:to_i).inject(:+)
    @total % 10 == 0 ? true : false
  end 
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?
# 	Well the first part is that we thought we would end up getting a string of numbers with spaces like
# 	(4642 4234 4356 3432) vs (4642423443563432) so our first problem was deciding how to convert it into
# 	an array of integers without spaces. What we did was wait until the next step to convert to integers
# 	but first we converted to a string, split and deleted spaces. 
# What new methods did you find to help you when you refactored?
# 	A few things. My peer showed my the syntax of if else statements by using ? true : false which make
# 	simple if/else statement look quite clean. We used the inject enumerator to get a sum of the values
# 	by calling the symbol :+. Then we used something interesting I'm looking up more information on, the 
# 	map(&:to_i) which we used to convert the split array into integer. 
# What concepts or learnings were you able to solidify in this challenge?
# 	An important concept for this one was that since out process involved splitting, joining, iterating
# 	and modifying arrays, it was important to keep track of what were strings and what were integers and
# 	how some can be modified in some ways and some another. It also solidified instances and when they need
# 	to be passed from one method to another.
