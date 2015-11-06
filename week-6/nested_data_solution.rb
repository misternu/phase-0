# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |x|
#   if x.class == Array
#     x.to_a.map! do |y|
#       y + 5
#     end
#   else
#     x + 5
#   end
# end

# p number_array.to_s


# Refactored Solution

number_array.map! do |x|
  if x.is_a?(Array)
    x.map do |y|
      y + 5
    end
  else
    x + 5
  end
end

p number_array.to_s


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


startup_names.map! do |x|
  if x.is_a?(Array)
    x.map do |y|
      if y.is_a?(Array)
        y.map do |z|
          z + "ly"
        end
      else
        y + "ly"
      end
    end
  else
    x + "ly"
  end
end

p startup_names

=begin Reflection
##What are some general rules you can apply to nested arrays?

Any one method can only iterate over the outermost eunmerable that was passed to it. indices are called from the outside in.

##What are some ways you can iterate over nested arrays?

Iterate over the sub array inside the iteration of the main array. Or call the sub array directly and then iterate over it.

##Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We ended up using map conditionally on the sub arrays, we tried to find something that would only act on the integers and strings but we couldn't within the timebox.

=end