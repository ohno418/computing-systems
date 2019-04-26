class Nand
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a
    self.b = b
  end

  def out
    a == 1 && b == 1 ? 0 : 1
  end
end
