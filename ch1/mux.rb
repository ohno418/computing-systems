require_relative './nand'
require_relative './not'

class Mux
  attr_accessor :a, :b, :sel

  def initialize(a, b, sel)
    self.a = a
    self.b = b
    self.sel = sel
  end

  def out
    Nand.new(
      Nand.new(a, Not.new(sel).out).out,
      Nand.new(b, sel).out
    ).out
  end
end
