require_relative './nand'
require_relative './not'

class Or
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a
    self.b = b
  end

  def out
    Nand.new(Not.new(a).out, Not.new(b).out).out
  end
end
