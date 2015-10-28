# Numbers to Commas Solo Challenge

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) A string, with commas in the appropriate places for long numbers
# What are the steps needed to solve the problem?
=begin
1 see if the number is greater than 1000
if so, put the remainder from divinding by 1000 in the string, with a comma in front
then integer divide the number by 1000. repeat, putting the next result in front of the last result

Pseudocode:
DEFINE method called separate_comma that takes an integer
  CREATE empty output string
  CREATE integer 'number' equal to input integer
  LOOP while number > 1000
    PREPEND comma and the remainder from number divided by 1000 turned to string to the output string
    SET number to number integer divided by 1000
  PREPEND 'number' turned to string to
  RETURN output string
=end

# 1. Initial Solution
# def separate_comma(integer)
#   output = ""
#   number = integer
#   while number > 1000
#     output = "," + (number % 1000).to_s.rjust(3, '0') + output
#     number = number / 1000
#   end
#   output = number.to_s + output
# end

# 2. Refactored Solution
def separate_comma(integer)
  output = ""
  input = integer.to_s
  while input.length > 3
    output = "," + input.slice!(-3,3) + output #slice! grabs 3 chars, starting 3 from the end
  end
  output = input + output
end


=begin Reflection
##What was your process for breaking the problem down? What different approaches did you consider?

I thought of the string as a stack of blocks, and that I wanted to get things in between the blocks, starting at the end. I thought about making a list of numbers and using join, but then I would still need to use rjust if the three digits started with 0.

##Was your pseudocode effective in helping you build a successful initial solution?

Yes. My final solution was much more to do with strings than math, but the same general idea.

##What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I tried using insert, but it took just as much work as the other way. When I found that I could use slice-bang, I changed the solution from math to string manipulation.

##How did you initially iterate through the data structure?

At first I divided by 1000 and put remainders into strings. Now I just grabbed three characters at a time.

##Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, no more layered methods, and since the math in my first solution was esoteric to anyone looking for the first time.

=end