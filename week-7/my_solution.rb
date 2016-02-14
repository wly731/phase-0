# Virus Predictor

# I worked on this challenge with: Peter Kang
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
#
#

require_relative 'state_data'

# the relative file path that we want to import the data from

class VirusPredictor

#   Constructor method, for creating a new object.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#   prints out the state, predicted deaths and speed of spread



  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end



 private

#  Condition set on different population density, then calculate the number of deaths based on population.

#   Initial solution:

#   def predicted_deaths()
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"



#   Refactored:

    def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      print "#{@state} will lose #{(@population * 0.4).floor} people in this outbreak"
    elsif @population_density >= 150
      print "#{@state} will lose #{(@population * 0.3).floor} people in this outbreak"
    elsif @population_density >= 100
      print "#{@state} will lose #{(@population * 0.2).floor} people in this outbreak"
    elsif @population_density >= 50
      print "#{@state} will lose #{(@population * 0.1).floor} people in this outbreak"
    else
      print "#{@state} will lose #{(@population * 0.05).floor} people in this outbreak"
    end

  end

#   Condition set on different population density, then calculate the speed.

#  Initial solution:

#   def speed_of_spread() #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# refactored:

 def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each { |k,v|
  VirusPredictor.new(k, v[:population_density], v[:population]).virus_effects

  }


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

Ans: The key in the outter layer is of a string data style while the key in the inner layer is of a symbol data type. With a new symbol created, when we call and use the same symbol again, it will not create extra memory space; While for string, even if we call and use the same string with the same content, we still create extra memory space because they are not identical. They are only 2 strings with the same values.


What does require_relative do? How is it different from require?

Ans: require_relatives takes in the relative file path from which we want to import the data. It is different from require because require_relative only needs the relative path while require needs the absolute path.


What are some ways to iterate through a hash?

Ans: Using enumerators like .each.


When refactoring virus_effects, what stood out to you about the variables, if anything?

Ans: We noticed that having the instance variables declares, we can actually use them anywhere in the same class. Hence, we don't need to pass in any argument for the methods predicted_deaths and speed_of_spread.


What concept did you most solidify in this challenge?

Ans: About Ruby constant and its scope which is supposed to be global.


=end