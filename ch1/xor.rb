require './nand'
require './or'

class Xor
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a
    self.b = b
  end

  def out
    Nand.new(Or.new(a, b).out, Nand.new(a, b).out).out
  end
end
