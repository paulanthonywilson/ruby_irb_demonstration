class SimpleClass

  #instance method
  def say_hello
    "hi"
  end

  # class method
  def self.say_hello_class
    "hi class"
  end


  def inspect
    "Simple class inspected - for debugging / logging"
  end

  def to_s
    "String version of the object for production use"
  end
end

if __0__ == __FILE__

  so = SimpleClass.new

  puts so.say_hello
  puts SimpleClass.say_hello_class

  puts so.inspect
  puts so.to_s

  # p outputs the result of inspect - puts uses to_s
  p so
  puts so
end





