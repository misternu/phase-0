# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

=begin Pseudocode
define a helper function fib that takes a value n
  if n is zero
    return 0
  if n is one
    return 1
  if n is greater than 1
    return fib(n-1) + fib(n-2)
define a function is_fibonacci? that takes a value n
  set value i to 1
  while fib(i) is less than n
    add one to i
  return the boolean of fib(i) is equal to n
=end

# Initial Solution
def fib_up_to(num)
  fib = [0,1]
  while fib[1] < num
    fib.push(fib[0] + fib[1])
    puts fib.shift
  end
end

def is_fibonacci?(num)
  fib = [0,1]
  while fib[1] < num
    fib.push(fib[0] + fib[1])
    fib.shift
  end
  fib[1] == num
end



# Refactored Solution







# Reflection