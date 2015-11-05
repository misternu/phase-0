# Your Names
# 1)Timothy Meixell
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3

=begin
  # Figure out if the bakery can make the request food.
  library.each do |food|
    #somehow if not cake pie or cookie, error_counter will be > 0
    if library[food] != library[item_to_make]
      # p error_counter += -1
      error_counter += -1
    end
  end
  #displays into console 2,1,0, for apparently no good reason for the 2 food items we don't care about.

  # If the bakery CANNOT make the request food, raise an error.
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end

#   unless == if !true

  unless library.keys.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.keys.include?(item_to_make)

  # Anything that comes after this raise, can be considered an else block.
  #

  serving_size = library[item_to_make]

  # serving_size = library.values_at(item_to_make)[0]
  # Becuase of the "[0]" we can assume that values_at returns an array.
  # Returning an array of all values that match a given key.
  # However, there can only be one of each key in the hash.
  # Therefore, values_at returns a single element array.
  # values_at("cake") => [5]
  # [5][0] => 5


  remainder = ingredients % serving_size
  # take the remainder of dividing available ingredients by serving size


  # tell them how many they made, and extra ingredients if any
  if remainder == 0
  #case remainder
  #when 0
    return "Calculations complete: Make #{ingredients/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{ingredients/serving_size} of #{item_to_make}, you have #{remainder} leftover ingredients. Suggested baking items: #{remainder} cookies"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


