# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Cannot be an empty array") if sides.empty?
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    return sides[rand(@sides.length)]
  end
end

puts Die.new([1,2,3]).roll

# Refactored Solution








# Reflection
