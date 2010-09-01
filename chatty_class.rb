puts "This file is just being executed like any other"

class ChattyClass
  puts "Here I am, in the middle of the class definition"

  def hi
    puts "hi there!"
  end

  puts "Still here"
  puts "Who am I?"
  p "I am #{self}"

  puts "Let's be clever"

  ["one", "two", "three", "four", "five"].each_with_index do |number, i|
    define_method number do
      i + 1
    end
  end


end

if $0 == __FILE__
  chatty = ChattyClass.new

  puts chatty.one
  puts chatty.three
end
