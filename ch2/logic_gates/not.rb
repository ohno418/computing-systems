require_relative './nand'

class Not
  attr_accessor :a

  def initialize(a)
    self.a = a
  end

  def out
    Nand.new(a, a).out
  end
end
