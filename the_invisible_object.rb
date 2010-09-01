require 'rubygems'
require 'active_support'

class InvisibleObject < ActiveSupport::BasicObject
  attr_writer :target

  def initialize(target)
    @target = target
  end


  def method_missing(name, *args, &block)
    @target.send(name, *args, &block)
  end

end

if $0 == __FILE__
  invisible = InvisibleObject.new("hello")

  p invisible
  p invisible.class

  invisible.target = [1,2,3]

  p invisible
  p invisible.class

  invisible.each do |val|
    p val
  end

end
