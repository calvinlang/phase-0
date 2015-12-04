# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' 
# require is a file call necessary for this program to run.  The relative part means that look in the relative directory to the program.  Require literally takes the file and pastes it on the line where it is called.  Require uses knowledge of the path variable in the shell (as compared to require_relative). 

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


# STATE_DATA is a hash, that contains inner hashes.  The first syntax is a hash rocket, and the second one is a colon.  When you put a colon after after a key, it turns it into a symbol.  As such, a proper noun like a state would be better as string with a hash rocket.  People tend to want to use symbol keys over strings because of string degradation (used to be in Ruby that every time a string variable was called, it would have to be called every single).

# STATE_DATA is a constant, it is not a global variable, but constants have a global scope. Bad practice to change constants.



# Declare a class
class VirusPredictor

  # Establishing all the arugments as instances
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
   
  # Calls on two internal methods within the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  private 
  #only the items in the class would be able to access it aka can't be accessed by anything outside of the class/object.

  # Function accepts 3 arguments and puts the population through an
  # if statement that takes the population density and multiplies it
  # through a defined quotient. The higher density the higher the instance of the death rate. 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method accepts two arguments and puts the values through an
  # if statement that defines the variable speed and outputs that to
  # the user.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# VirusPredictor.new takes 3 arguments of these types
#  - String
#  - Float
#  - Integer

# Output is a string with the inputs listed


STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end



# e.g., state == "Alabama"
# e.g., STATE_DATA[state] == data

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section



# What are the differences between the two different hash syntaxes shown in the state_data file?
#   One is a hash rocket and the other uses a colon. The colon is useful because it becomes a symbol and has its advatages in
#   being less susceptible to string degrededation and is better when it's the same thing used over and over like in our example
#   It will also take up less space in memory as the scale increases.
# What does require_relative do? How is it different from require?
#   Require relative takes in code from another file in a relative file path. The require puts the information in the linked
#   file into the current file. Require literal takes a complete file path for the linked file.
# What are some ways to iterate through a hash?
#   Hashes can be interated though a loop such as each or map. In our example we added an each loop to iterate through the hash
#   and pass each element to the virus_effects method in the class. Iterating through a loop essentially follows the same 
#   principles whether it is .map or .each. 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   Since we were using instances the parameters and arguments really didn't have to be in there so I removed them because instance
#   variables are available to all the methods. 
# What concept did you most solidify in this challenge?
#   Iterating through hashes had a lot of value to me becuase I haven't interated through a hash that included two key value pairs
#   per hash object. This assignment also taught me about the private statement and how accessible it is to items within the class.




