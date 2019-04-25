require './nand'
require './not'

class DMux
  attr_accessor :a, :sel

  def initialize(a, sel)
    self.a = a
    self.sel = sel
  end

  def out
    [
      Not.new(Nand.new(a, Not.new(sel).out).out).out,
      Not.new(Nand.new(a, sel).out).out
    ]
  end
end
