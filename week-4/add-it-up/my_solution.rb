# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: The sum of the numbers in the array
# Steps to solve the problem.
=begin
define method that takes array as parameter
  default total to zero
  for each item in the array, add it to total
  return total
end
=end
# 1. total initial solution
# def total(list_of_numbers)
#   total = 0
#   list_of_numbers.each do |number|
#     total = total + number
#   end
#   return total
# end

# 3. total refactored solution
def total(list_of_numbers)
  return list_of_numbers.reduce(:+)
end

# N/A

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: sentence
# Steps to solve the problem.
=begin
define a method that takes parameter array of strings
  set result to first string capitalized
  iterate over the rest of the strings
    append string to result with space before
  end
  append . to result
  return result
end
=end
# 5. sentence_maker initial solution
# def sentence_maker(words)
#   result = words.shift.capitalize
#   words.each do |word|
#     result = result + " " + word
#   end
#   result = result + "."
#   return result
# end
# 6. sentence_maker refactored solution
def sentence_maker(words)
  result = words.shift.capitalize
  words.each do |word|
    result = result + " " + word.to_s
  end
  result = result + "."
end
