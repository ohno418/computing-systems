require './and'

class Or16
  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a[0..15]
    self.b = b[0..15]
  end

  def out
    (0..15).map { |i| Or.new(a[i], b[i]).out }
  end
end
