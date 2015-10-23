# Your Solution Below
def factorial(number)
  result = 1
  i = 0
  while i < number
  i = i+1
  result = result * i
  end
  return result
end


### Pseudocode ###

=begin
define method
 factorial result to one
 counter tracks number of products (set to zero)
 begin while loop
  while counter is less than initial number
  counter increases by one
  factorial = factorial times counter
  loop is repeated until number is reached with counter
  end
  return factorial
=end