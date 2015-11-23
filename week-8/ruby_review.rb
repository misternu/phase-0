=begin Pseudocode
DEFINE a function super fizzbuzz that takes an array
  STORE an empty array
  ITERATE over the array, pushing to the empty array
    If it is not divisible by 3 or 5, just push it
    if it is divisible by 3 push fizz
    if it is divisible by 5 also push buzz
=end


# Initial Solution

# def super_fizzbuzz(array)
#   result = []
#   array.each do |number|
#     if (number % 3 != 0 and number % 5 != 0)
#       result.push(number)
#     else
#       string = ""
#       if (number % 3 == 0)
#         string += "Fizz"
#       end
#       if (number % 5 == 0)
#         string += "Buzz"
#       end
#       result.push(string)
#     end
#   end
#   result
# end

# Refactored Solution

def super_fizzbuzz(array)
  array.map {|n| n % 3 == 0 ? (n % 5 == 0 ? "FizzBuzz" : "Fizz") : (n % 5 == 0 ? "Buzz" : n)}
end


# Reflection
##What concepts did you review or learn in this challenge?
# I had to figure how to use nested ternaries when refactoring.

##What is still confusing to you about Ruby?
# not sure if anything is, sometimes the syntax gets me but that's about it

##What are you going to study to get more prepared for Phase 1?
# I want to try to make sure to do all the ruby challenges
