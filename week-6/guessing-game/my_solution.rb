# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Number to be guessed
# Output: Object that can be guessed at and keeps track if you are right
# Steps:
=begin Pseudocode:
DEFINE class guessing game
  DEFINE initialization method that takes number as argument
    SET instance variable to number that is to be guessed
    SET instance variable solved to false
  DEFINE method that takes a number in as a guess
    IF the number is correct
      SET solved to true
      RETURN symbol for correct
    ELSE
      SET solved to false
      IF the number is higher
        RETURN symbol high
      ELSE
        RETURN symbol low
  DEFINE accessor to read solved
=end


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def solved?
#     @solved
#   end

#   def guess(number)
#     if number == @answer
#       @solved = true
#       return :correct
#     else
#       @solved = false
#       if number > @answer
#         return :high
#       else
#         return :low
#       end
#     end
#   end
# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def solved?
    @solved
  end

  def guess(number)
    @solved = number == @answer
    if number == @answer
      return :correct
    else
      return (number > @answer ? :high : :low)
    end
  end
end

=begin Reflection
##How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Real world objects carry with them the effects of what has happened to them. If you fill two donuts with jellies, one will have grape and the other will have berry, and that property will follow the instances of donut.

##When should you use instance variables? What do they do for you?

When a variable needs to be stored for longer than method execution and needs to be specific to the object. They keep you from having to track which external variables go with which object.

##Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

No trouble. There were only three conditions, correct high or low. I checked for correct first, and then split the rest into high and low. For the second one, I saved space by using the conditional operator.

##Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I had assumed it was something to do with memory use, I want to reread the chapter later to see if there is something more clever going on.

=end
