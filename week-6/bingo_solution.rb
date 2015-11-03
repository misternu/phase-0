# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 1.5 hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  DEFINE method call_ball
    RETURN sample from letters concatenated with rand from number range

# Check the called column for the number called.
  DEFINE check_column that takes a string argument and a number argument
    GET index of string in list of letters
    ITERATE over the rows, checking the given index for the number
      IF you find it
        RETURN true
      ELSE
        RETURN false

# If the number is in the column, replace with an 'x'
  DEFINE mark_box that takes a string and a number argument
    GET index of string in list of letters
    ITERATE over the rows, checking the given index for the number
      IF you find it
        SET index to the letter 'X'
      ELSE
        RETURN false

Those two could call a helper function for DRY

# Display a column to the console
  DEFINE method column that takes a letter argument
    GET index of letter in list of letters
    ITERATE over the rows
      PUSH numbers at index to an array
    PRINT the resulting array

# Display the board to the console (prettily)
  DEFINE method display
    PRINT a line of underscores the width of the board
    ITERATE over the rows
      ITERATE within the row
        PRINT a vertical bar and the number
      PRINT a vertical bar
      PRINT a line of minus symbols
=end
# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letters = ["B","I","N","G","O"]
#     @numbers = (1..100)
#   end


#   def call
#     check(@letters.sample, rand(@numbers))
#   end

#   def check(letter, number)
#     col = @letters.find_index(letter)
#     @bingo_board.each do |row|
#       row[col] = "X" if row[col] == number
#     end
#   end

#   def display_col(col)
#     @bingo_board.each do |row|
#       puts row[col]
#     end
#   end

#   def display
#     puts "-"*16
#     @bingo_board.each do |row|
#       print "|"
#       row.each do |number|
#         print number.to_s.rjust(2,"0") + "|"
#       end
#       print "\n" + "-"*16 + "\n"
#     end
#   end
# end

# Refactored Solution

class BingoBoard
  @@letters = ["B","I","N","G","O"]
  @@numbers = (1..100)

  def initialize(board)
    @bingo_board = board
  end

  def call
    check(@@letters.sample, rand(@@numbers))
  end

  def check(letter, number)
    col = @@letters.find_index(letter)
    @bingo_board.each { |row| row[col] = "X" if row[col] == number }
  end

  def display_col(col)
    @bingo_board.each { |row| puts row[col] }
  end

  def display
    puts "-"*16
    @bingo_board.each do |row|
      print "|"
      row.each do |number|
        print number.to_s.rjust(2) + "|"
      end
      print "\n" + "-"*16 + "\n"
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.display

=begin Reflection
##How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was hard this time because I feel like I was mislead by the notes that were already there, They seemed to have a different goals for the methods that ended up coming later in the assignment. My style might be too much like code but it makes it easier to move on. It is based somewhat on something I saw a guide type either in a video or during a gps.

##What are the benefits of using a class for this challenge?

All of your actions from outside the class are organized for you inside the instance, so when using it you can treat it like a actual bingo board and it will track everything for you behind the scenes. With the display method completed, you never have to look directly at the arrays, the instance displays it nicely for you.

##How can you access coordinates in a nested array?

By calling index twice like so: array[i][j] . I didn't end up needing that exact syntax this time.

##What methods did you use to access and modify the array?

I used each to iterate over, and index to check and change values in the sub arrray.

##Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

find_index was useful, it returns the first index in an array matching the object you search it for. You call it on an array and feed it the argument of what to search for like so: array.find_index(object)

##How did you determine what should be an instance variable versus a local variable?

I made letters and numbers class variables, because they will always be the same for all the instances. I made board an instance variable, because it will change and needs to be carried with the instance. I used a local variable once for col, to hold a column for just a moment while checking it for matches.

##What do you feel is most improved in your refactored solution?

I cleaned up some lines and moved some variables to the whole class, really not much improved. Not sure what would be best, other than to include the optional release which I haven't done at the time of writing this. Everything tests fine in irb.

=end