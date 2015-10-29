=begin Pseudocode
DEFINE a method to try for groups of five and four that takes a length as parameter
  CREATE a variable 'fives' that holds the number of fives, set it to how many we can fit in length
  CREATE a variable 'fours' that holds the number of fours, set it to zero
  CREATE a temporary variable, set it to the remainder after dividing by five
  WHILE the temporary variable is less than the length
    SET fours to how many fours can fit in temp
    IF temp divided by four has no remainder
      RETURN an array with 'fives' and 'fours'
    DECREMENT 'fives'
    ADD 5 to temp
  RETURN an array with zeroes if nothing worked

DEFINE a method to make the decision for how many of each type of group, parameter 'length'
  CREATE a variable to hold the number of groups of five, set to zero
  CREATE a variable to hold the number of groups of four, set to zero
  CREATE a variable to hold the number of groups of three, set to zero
  CREATE a temporary variable to hold the number we are working with, set to length
  RETURN nothing if the length is too small to work
  WHILE the temporary number is greater than zero
    SET the number of groups of fives and fours to the result of calling temp in the first method
    SUBTRACT groups of five and four from temp, if it worked
    IF it didn't work
      SUBTRACT 3 from temp
      ADD 1 to the number of groups of threes
  RETURN an array that holds the numbers of each size of group

DEFINE a method called create_groups that takes an array of names
  CREATE a variable to hold the unpicked students, set to the array that came in
  CREATE three variables to hold the number of each size of group
  SET the three variables to the result of sending the length of the group of names to the method above
  CREATE a variable to hold the output of the function, set to an empty array
  WHILE the first three variables are not zero
    CREATE a variable holding this group, an empty
    ITERATE the number of times determined by the first non zero group number
      GRAB a random string from the list of names, and append it to the group
    APPEND the group to the output array
    SUBTRACT one from that kind of group
  RETURN the output array

=end

def try_five_four(length)
  fives = length / 5 # how many fives
  fours = 0
  temp = length % 5 # what's left over
  while temp <= length # while the leftovers are less than the length
    fours = temp / 4 # set the fours equal to how many can fit in the leftovers
    return [fives, fours] if temp % 4 == 0 #if that's all return the values
    fives -= 1 #if not decrement the fives
    temp += 5 #and increase the leftovers
  end
  return [0,0] #if no combination worked, return nothing
end

def group_sizes(length)
  fives = 0
  fours = 0
  threes = 0
  temp = length
  return [0,0,0] if length < 2 #Can't work with less than 3
  while temp > 0 #while we haven't found a solution
    fives, fours = try_five_four(temp) #Try to find a solution with 5 and four
    temp -= (fives * 5) + (fours * 4) #If we found it, apply it
    if temp > 0 #If we didn't,
      temp -= 3 #Take away three so we can try again.
      threes += 1
    end
  end
  return [fives, fours, threes] #return the solution
end

def create_groups(list)
  remaining = list.shuffle
  fives, fours, threes = group_sizes(list.length)
  sizes = Array.new(fives, 5) + Array.new(fours, 4) + Array.new(threes, 3)
  groups = []
  while sizes.length > 0
    group = []
    sizes.pop.times do
      group.push(remaining.pop)
    end
    groups.push(group)
  end
  return groups
end

names = ["Abraham Clark",
"Alan Alcesto",
"Aleksandra Nowak",
"Alexander Williams",
"Alicia Quezada",
"Amaar Fazlani",
"Becky Lehmann",
"Bernice Anne W Chua",
"Brian Bensch",
"Brian Wagner",
"Bryan Munroe",
"Carolina Medellin",
"Chris Gomes",
"Chris Miklius",
"Christopher M. Guard",
"Clinton Weber",
"Daniel Andersen",
"Darius Atmar",
"Edward Gemson",
"Fatma Ocal",
"Gregory Wehmeier",
"Igor Kazimirov",
"Jacob Crofts",
"Jamar Gibbs",
"James Artz",
"Jessie Richardson",
"Jon Clayton",
"Josh Shin",
"Joshua Monzon",
"Karla King",
"Kevin Corso",
"Kris Bies",
"Logan Bresnahan",
"Luis Fernando Plaz",
"Malia Lehrer",
"Michael Whelpley",
"Natalie Polen",
"Natasha Thapliyal",
"Nicola Beuscher",
"Nil Thacker",
"Nimi Samocha",
"Peter N Wood",
"Pratik Shah",
"Ryan Ho",
"Ryan Zell",
"Sabrina Unrein",
"Sasha Tailor",
"Scott Chou",
"Shawn Spears",
"Shea Munion",
"Solomon Fernandez",
"Syema Ailia",
"Tal Schwartz",
"Timothy Meixell",
"Trevor Newcomb",
"Van Phan",
"Walter Kerr",
"Will Granger",
"William Brinkert",
"Zach Schatz"]

create_groups(names).each do |x|
  puts x.to_s
end

=begin Reflection
##What was the most interesting and most difficult part of this challenge?

Finding the best way to pull apart the problem of creating groups that are all the right size. I decided to prioritize not having groups of three whenever possible, which turned out to make things much harder. I created two helper functions to separate the problem into parts.

##Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, after the first attempt I deleted everything and started my pseudocode over.

##Was your approach for automating this task a good solution? What could have made it even better?

It was a good solution, but what would have made it better is if I could solve the general case. But for that I think I would need recursion.

##What data structure did you decide to store the accountability groups in and why?

An array, because each group is going to have a number, and so that can come from the indices. Each group was then a list of strings, so that each student has a set of coordinates in the main array.

##What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned about the shuffle method of array and about multiple assignment.

=end