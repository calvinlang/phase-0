# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: an array
# Output: A random value of the array
# Steps: raise error if array is empty.
        # declare @sides as array length
        # declare @array as array
        # make @sides available outside
        # Roll method as return of random integer within array


# Initial Solution

# class Die
#   def initialize(array)
#     raise ArgumentError.new("Cannot be an empty array") if array.empty?
#     @sides = array.length
#     @array = array
#   end


#   def sides
#     @sides
#   end

#   def roll
#     return @array[rand(@sides)]
#   end
# end


# puts Die.new([1,2,3]).sides


# Refactored Solution



class Die
  def initialize(array)
    raise ArgumentError.new("Cannot be an empty array") if array.empty?
    @sides = array.length
    @array = array
  end


attr_reader :sides

  def roll
    return @array[rand(@sides)]
  end
end




# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#   Not much at all. I just had to add a array.length and change the random integer to choose an array.
# What does this exercise teach you about making code that is easily changeable or modifiable? 
#   It can save a lot of time in the future to make code that can be moved from place to place. If we're going to
#   be doing a lot of code we might as well make something we can re-use in the future.
# What new methods did you learn when working on this challenge, if any?
#   No new methods for this assignment.
# What concepts about classes were you able to solidify in this challenge?
#   It helped me with undertanding a bit more about instances and when they can be accessed inside and out of a class
