# Pad an Array

# I worked on this challenge with []

# I spent [] hours on this challenge.


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
endva

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  pad!(new_array, min_size, value)
  return new_array
end

# we tried some things! one of them worked...

# 4. Reflection

