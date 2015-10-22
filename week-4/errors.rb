# Analyze the Errors

# I worked on this challenge by myself.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 169
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# It expected the keyword end again before the end of file
# 5. Where is the error in the code?
# The while on line 13 doesn't close before the end of the function
# 6. Why did the interpreter give you this error?
# It thought the rest of the file was in the function cartman_hates

# --- error -------------------------------------------------------

south_park = "A show"

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
# the undefined variable is south_park
# 4. Where is the error in the code?
# line 35
# 5. Why did the interpreter give you this error?
# giving a new name without either defining it or having defined it before

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# the undefined method is named cartman
# 4. Where is the error in the code?
# line 50
# 5. Why did the interpreter give you this error?
# we called a function name without either defining it or it having been defined previously

# --- error -------------------------------------------------------

def cartmans_phrase(foo)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# the method is called cartmans_phrase and it expected 0 arguments and recieved 1
# 4. Where is the error in the code?
# either 65 or 69 depending on what was intended
# 5. Why did the interpreter give you this error?
# the method gets sent a string but expects no parameters

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("this")

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# the method is cartman_says it expected 1 argument and recieved 0
# 4. Where is the error in the code?
# either 84 or 88
# 5. Why did the interpreter give you this error?
# the method is called with no parameters and expects a string



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Really')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# the method is cartmans_lie and it expects 2 arguments and recieved 1
# 4. Where is the error in the code?
# either 105 or 109
# 5. Why did the interpreter give you this error?
# the method was sent one string and expected two

# --- error -------------------------------------------------------

5.times do
  puts "Respect my authoritay!"
end

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# string cant be coerced into fixnum, typeerror
# 3. What additional information does the interpreter provide about this type of error?
# that's it
# 4. Where is the error in the code?
# line 124, the author expects it to print 5 times I guess
# 5. Why did the interpreter give you this error?
# it calls the times method on a number expecting a number, and we sent it a string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# zerodivisionerror
# 3. What additional information does the interpreter provide about this type of error?
# divided by zero
# 4. Where is the error in the code?
# line 141
# 5. Why did the interpreter give you this error?
# the divide method of a number cant receive 0 as the input

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# loaderror
# 3. What additional information does the interpreter provide about this type of error?
# It gives the full path that it tried to load
# 4. Where is the error in the code?
# the code is correct but the file does not exist
# 5. Why did the interpreter give you this error?
# see 4


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.