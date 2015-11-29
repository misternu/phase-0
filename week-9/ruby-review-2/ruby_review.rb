# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

=begin Pseudocode
define a function is_fibonacci? that takes a value n
  set array fib to zero and one
  while the last value is less than n
    push the sum of the last two values on to fib
  return the boolean of the last value being equal to n
=end

# Initial Solution
def is_fibonacci?(num)
  fib = [0,1]
  while fib[-1] < num
    fib.push(fib[-1] + fib[-2])
  end
  fib[-1] == num
end

# Refactored Solution
# I really don't know how to improve on this, maybe there is a better way to generate fibonacci sequences?

=begin Reflection

=end