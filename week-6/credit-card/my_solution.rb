# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:Number
# Output: true/false or ArgumentError
# Steps:
#1) Conditional that states if number (to s) is not 16 characters long, raise argument error.
#2) put the digits into an array as strings
#3) iterate through array and multiple values at even indices times 2
#4) flatten the array back to a single string
#5) Splitting string into array
#6)Use inject method to total up individual integers in array
#7) Return truth value of remainder being equal to zero when divided by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     @number = number
#     if number.to_s.length != 16
#       raise ArgumentError.new "Number must be 16 digits long."
#     end
#   end

#   def check_card
#     digits = @number.to_s.split(//)
#     digits.map!.with_index { |digit,i| (i % 2 == 0) ? (digit.to_i *   2).to_s : digit}
#     digits = digits.join
#     digits = digits.split(//)
#     total = digits.inject(0) { |t, x| t + x.to_i }
#     total % 10 == 0
#   end

# end

# test = CreditCard.new(4408041234567901)
# p test.check_card

# Refactored Solution

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new "Number must be 16 digits long." unless number.to_s.length == 16
  end

  def check_card
    digits = @number.to_s.split(//)
    digits.map!.with_index { |digit,i| (i % 2 == 0) ? (digit.to_i *   2).to_s : digit}
    digits = digits.join.split(//)
    digits.inject(0) { |t, x| t + x.to_i } % 10 == 0
  end
end

=begin Reflection

##What was the most difficult part of this challenge for you and your pair?

We were stuck for a while figuring out that using map.with_index needs the opposite block argument order from each_with index, ended up having to p every line to find it.

##What new methods did you find to help you when you refactored?

Refactoring was more about combining related methods into one liners, we had already used a lot of the methods we wanted the first time around.

##What concepts or learnings were you able to solidify in this challenge?

My partner taught me about joining and splititng, I had seen similar things before but not in this language. I taught her inject and solidified it for myself.

=end