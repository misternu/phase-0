#Attr Methods

# I worked on this challenge by myself.

# I spent 0.5 hours on this challenge.

class NameData
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end


class Greetings
  def initialize
    @name = NameData.new("Student")
  end

  def hello
    puts "Hello #{@name.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin Releases
1)
##What are these methods doing?

The methods are reading from or replacing the instance variables

##How are they modifying or returning the value of instance variables?

executing the = method from inside the instance, or returning values to whoever called the methods.

2)
##What changed between the last release and this release? What was replaced?

The method what_is_age has been replaced with the attr reader :age, and the later call to .what_is_age has been replaced with just .age

##Is this code simpler than the last?

Yes, much shorter. We should do it to the rest.

3)
##What changed between the last release and this release? What was replaced?

The change_my_age has been replaced with the age attr writer. The .change_my_age call has been replaced with just .age

##Is this code simpler than the last?

Yes, keep going.

6)
##What is a reader method?

A method that only allows you to read an instance variable, not to write to it

##What is a writer method?

A method that only allows you to write to an instance variable, not to read it

##What do the attr methods do for you?

They are a quick syntax replacement for the longer method definitions that typically get written

##Should you always use an accessor to cover your bases? Why or why not?

Unless you need the methods to do extra things when they are called in addition to reading and writing.

##What is confusing to you about these methods?

They aren't very confusing, you just have to realize that the same methods are being created behind the scenes that you would be making anyway.

=end