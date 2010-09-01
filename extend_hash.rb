class MyHash

  def method_missing(name, *args, &block)
    return self[name] if has_key?(name)
    super
  end
end



myHash = MyHash.new(:a=>1)

p myHash.a
