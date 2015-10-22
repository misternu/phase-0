# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  # return array_1 + array_2 would work
  array = array_1
  array_2.each do |item|
    array.push item
  end
  return array
end
