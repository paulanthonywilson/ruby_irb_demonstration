# IRB basics - Interactive Ruby Shell

puts 1 + 1

puts 3 + 5

puts "Hello world"
puts

# Everything is an object
#

puts 4.class
puts 3.141.class
puts "hello".class
puts

# Dynamically typed - Labels not shoeboxes
#

myvar = "hello"

puts myvar

myvar = 3

puts myvar

puts

# Everything is open to use and abuse
#

if 'change-plus' == ARGV[0]
  # Don't do this at home
  class Fixnum
    def +(operand)
      self * operand
    end
  end

  puts 3 + 2
  exit
end

require 'rubygems'
gem 'activesupport', '>=2.3.8' # some changes to modularity in recent versions

require 'active_support/time'

puts 3.days.ago

puts 11.months.from_now # not a patch on java.util.Calendar, though :-P

puts

# classes and methods

# Types of methods
# See simple_class.rb

# more on methods
#
#See my_counter.rb

# No separate compilation / class definition phase
#

# See chatty_class.rb
#


# Inheritance and modules
#
# See inheritance_and_modules.rb

# All communication is through message passing
# See the_invisible_object.rb
#

# basic blocks
#

puts

def one_and_two
  yield(1)
  yield(2)
end


one_and_two {|val| puts val}
puts

one_and_two do |val|
  puts val * 2
end

puts


times_3 = lambda do |x|
  x * 3
end


puts times_3.call(9)

puts


p [1,2,3,4].map {|x| x * 10}

puts

