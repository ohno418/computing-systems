require_relative './nand'
require_relative './not'

class And
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a
    self.b = b
  end

  def out
    Not.new(Nand.new(a, b).out).out
  end
end
