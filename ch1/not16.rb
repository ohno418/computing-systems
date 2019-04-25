require './not'

class Not16
  attr_accessor :a

  def initialize(a)
    self.a = a[0..15]
  end

  def out
    (0..15).map { |i| Not.new(a[i]).out }
  end
end
