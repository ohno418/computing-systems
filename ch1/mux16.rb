require_relative './mux'

class Mux16
  attr_accessor :a, :b, :sel

  def initialize(a, b, sel)
    self.a = a[0..15]
    self.b = b[0..15]
    self.sel = sel[0..15]
  end

  def out
    (0..15).map { |i| Mux.new(a[i], b[i], sel[i]).out }
  end
end
