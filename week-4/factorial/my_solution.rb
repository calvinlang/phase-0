# Factorial

# I worked on this challenge [by myself, with: ].
# Thoughts: Include and array or counter?

# We will define the method factorial(number). For now let's say (5).
# Have var total = number which is 5
# Use a loop
# Everytime 5 is multiplied by lower integer total changes to that number
#
#

# Your Solution Below
def factorial(number)
  # Your code goes here
  total = number
  counter = number

  if number == 0
    return 1
  else
    while counter > 1
      counter -= 1
      total *= counter
    end
  end

  return total
end

