puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Hello, " + first + " " + middle + " " + last + "!"
puts "What is your favorite number?"
number = gets.chomp.to_i
puts "Maybe " + (number + 1).to_s + " is better?"