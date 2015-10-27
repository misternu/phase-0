# Pad an Array

# I worked on this challenge with Ryan Zell


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# (array, number, *object)
# What is the output? (i.e. What should the code return?)
# new array of length number, filled in with object as necessary
# What are the steps needed to solve the problem?
# 1 see how long the string is
# 2 append object to string until it is length number
# 3 return string

# DEFINE pad! with args array, min_size, value (default to nil)
#   IF array is shorter than min_size
#     append value to array till it is min_size
# DEFINE pad with blah
#   Create copy of array
#   CALL pad! on array with same other arguments
#   RETURN copy of array


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   while min_size > array.length
#     array << value
#   end
#   return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array.clone
#   pad!(new_array, min_size, value)
#   return new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array.push(value) while array.length < min_size
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  pad!(new_array, min_size, value)
  return new_array
end

# we tried some things! one of them worked...

# 4. Reflection

=begin Reflection
##Were you successful in breaking the problem down into small steps?

Yes, it seems like. Not sure if we wre supposed to make the solution even more simplified/explcit.

##Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was easy, mostly because we both had the actual code in mind during the beginning. We are both having trouble thinking while looking at pseudocode.

##Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

It turned out that .copy wasn't a method, and we had to replace it with .clone, after that it was successful

##When you refactored, did you find any existing methods in Ruby to clean up your code?

Not sure if push is any cleaner than <<

##How readable is your solution? Did you and your pair choose descriptive variable names?

The variable names were left there by whoever created the challenge, so we can't take any credit for that. I think our solution is fairly readable but I'm sure there's a better way we didn't figure out

##What is the difference between destructive and non-destructive methods in your own words?

Destructive methods change what is passed in, non-destructive methods make a new thing from what is passed in.

=end