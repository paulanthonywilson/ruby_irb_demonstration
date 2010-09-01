class MyCounter

  # 'constructor-like method'.  Note default value
  def initialize(initial_value = 0)
    @value = initial_value
  end

  #every method returns something - no need for explicit return
  def value
    @value
  end

  def increment
    @value += 1
  end

end


if $0 == __FILE__
  counter = MyCounter.new

  p counter.value

  counter.increment

  p counter.value

  p MyCounter.new(5).value
end
