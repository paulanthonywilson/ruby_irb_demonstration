class Base
  def base_method
    "I am so basic"
  end

  def override_me arg
    "base method was passed '#{arg}'"
  end

end

module MixMeIn
  def method_on_module
    "I am defined in a module"
  end
end

class Sub < Base
  include MixMeIn

  def override_me arg
    "overriding but calling super"
    super
  end

end

if $0 == __FILE__
  s = Sub.new

  puts s.base_method
  puts s.override_me "hi"

  puts s.method_on_module

  puts

  p Sub.ancestors

end
