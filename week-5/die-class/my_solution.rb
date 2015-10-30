# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:A number
# Output: A die object with a number of sides that can be rolled
# Steps:
=begin Pseudocode
CLASS Die
  DEFINE initialize method that takes parameter sides
    IF number is less than one, throw Argument Error
    SET class variable 'sides' equal to sides
  DEFINE attribute reader to make 'sides' accessible
  DEFINE method roll
    RETURN a random number between 1 and size
=end

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     raise ArgumentError if sides < 1
#     @sides = sides
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     return 1 + rand(@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError unless sides >= 1
    @sides = sides
  end

  attr_reader :sides

  def roll
    1 + rand(@sides)
  end
end



=begin Reflection
##What is an ArgumentError and why would you use one?

You send the error to whoever is debigging their code that uses your method, so they know what they are doing wrong

##What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

This is the first time since before Phase 0 that I have gotten to define a class, raise an error type, make an attr reader, and use the method rand. Everything went smoothly, still getting used to implicit returns

##What is a Ruby class?

A class is a blueprint to use for object instances. Classes can also inherit or partially override the blueprints from ancestor classes.

##Why would you use a Ruby class?

WHen the built in objects aren't appropriate to the task at hand. Or, if you want to make a special modified version of the built in classes.

##What is the difference between a local variable and an instance variable?

A local variable is accessible in the appropriate scope, an instance variable is accessible only from inside the instance, though sometimes as an attribute of that instance.

##Where can an instance variable be used?

Only from inside the scope of self, unless an attribute reader or writer has been used.

=end