# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of choices
# Output: A die object that can be rolled to produce one of the labels given to it, and also knows how many sides that it has
# Steps:
=begin Pseudocode
DEFINE class Die
  DEFINE method for new die
    RAISE exception if argument length is less than 1
    SET sides instance variable to length of input array
    SET labels instance variable to input labels
  CREATE attr reader for sides
  DEFINE method roll
    RETURN random label from labels
=end

# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError, "must have at least one label" if labels.length < 1
    @sides = labels.length
    @labels = labels
  end

  attr_reader :sides

  def roll
    @labels.sample
  end
end

# No Refactored Solution, I didn't change anything after testing

=begin Reflection
##What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The labels had to be kept in a new separate variable, and the number of sides determined from that length. Instead of using rand I had to use sample to grab a random element from the labels array..

##What does this exercise teach you about making code that is easily changeable or modifiable?

If this class had been more complicated, or if my previous solution had been harder to read, this might have taken a lot longer to produce.

##What new methods did you learn when working on this challenge, if any?

The sample method for arrays

##What concepts about classes were you able to solidify in this challenge?

This was a reminder that after initialization, the instance doesn't continue to carry the arguments that you sent to it, so you have to make copies.

=end
