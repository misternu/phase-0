# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? The input is an array of numbers and strings
# What is the output? (i.e. What should the code return?) An array of the most frequent values
# What are the steps needed to solve the problem?
=begin
theres a bag of scrabble pieces
go through each scrabble piece, pick one at a time
if we haven't seen it before, one tick goes next to it
if we have, put another tick next to it
the one that has the most ticks or is tied, return those pieces
=end


# 1. Initial Solution

# def mode(objects)
#   frequencies = Hash.new

#   objects.each do |object|
#     if frequencies[object] == nil
#       frequencies[object] = 1
#     else
#       frequencies[object] += 1
#     end
#   end

#   result = []
#   highest = 0
#   frequencies.each do |object, frequency|
#     if frequency == highest #the frequency is the same as the highest we have seen
#       result.push(object)
#     elsif frequency > highest #the most ticks we have seen
#       highest = frequency
#       result = [object]
#     end
#   end
#   return result
# end

# 3. Refactored Solution
# def mode(objects)
#   frequencies = Hash.new(0) #Makes a new hash, with the default value zero
#   #inject takes the array one at a time, applies the block each time, using what you give it as the "memo" where the results are being injected to
#   objects.inject(frequencies) { |freq, object| freq[object] += 1; freq }
#   highest = frequencies.values.max #highest frequency value
#   output = frequencies.keys.select { |key| frequencies[key] == highest }
#   #Select takes only the values that make the block say true
# end

#Refactored some more:
def mode(objects)
  frequencies = objects.inject(Hash.new(0)) { |freq, obj| freq[obj] += 1; freq }
  highest = frequencies.values.max
  output = frequencies.keys.select { |key| frequencies[key] == highest }
end

=begin Reflection
##Which data structure did you and your pair decide to implement and why?

We used a hash because it can use any kind of object as a key

##Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

No, but this problem was harder than the last one, so it took more work

##What issues/successes did you run into when translating your pseudocode to code?

We used a lot of metaphors in our pseudocode, and it turned out that the last step in our pseudocode was a whole problem in itself. We had assumed that there was some easy way to find the object with the most once we had the hash.

##What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

At first we used each, and in refactoring I replaced that with inject and select. Inject is hard to understand without thinking about recursive functions, that I havent reviewed in a while. Select is easy to use.

=end