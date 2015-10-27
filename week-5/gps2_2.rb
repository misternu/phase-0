# Tasks:
# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

#DEFINE method called new_list
#  RETURN empty hash
#DEFINE method add_item that takes parameters list, item, and quantity
#  RETURN list with quantity at key "item"

#DEFINE method remove_item that takes the parameter list and item
#  IF list has a value at key item
#    RETURN updated list
#  ELSE
#    RETURN list
#DEFINE method update_item that takes the parameters list, item, and quantity
#  IF list has value at key "item,"
#    RETURN the list with value at key "item" changed to quantity
#  ELSE
#    RETURN the list
#DEFINE method print_list that takes the parameter list
#  ITERATE over the list
#    for each key/value pair, print value first, followed by the key

new_list = Hash.new

def new_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item) if list[item]
end

def update_item(list, item, quantity)
  list[item] = quantity if list[item]
end

def print_list(list)
  puts "Grocery List:"
  list.each do |item, quantity|
    puts "#{quantity} #{item.capitalize}"
  end
end

my_list = new_list
new_item(my_list, "lemonade", 2)
new_item(my_list, "tomatoes", 3)
new_item(my_list, "onions", 1)
new_item(my_list, "ice cream", 4)
remove_item(my_list, "lemonade")
update_item(my_list, "ice cream", 1)
print_list(my_list)

#PS what I thought about python was just wrong

=begin Reflection

##What did you learn about pseudocode from working on this challenge?

Better syntax with capitalizing, also the correct nomenclature for hashes, "key" instead of "index". Next time I want to put it inside a multiline comment instead of putting a hash on each line.

##What are the tradeoffs of using Arrays and Hashes for this challenge?

Arrays can store pairs of information, but accessing them by name instead of index would become very complicated. With hashes we can get this done with just the item names as keys.

##What does a method return?

The most recently accessed variable or whatever gets explicitly returned.

##What kind of things can you pass into methods as arguments?

Any object, I think.

##How can you pass information between methods?

You can send methods information through their arguments.

##What concepts were solidified in this challenge, and what concepts are still confusing?

I was confused about the level of access that methods had to outside variables that were fed into its arguments. I think I get it now.
