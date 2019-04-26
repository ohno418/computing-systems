require_relative './half_adder'
require_relative './full_adder'

module Add16
  # input:  a[16], b[16]
  # output: out[16]
  class << self
    def run(a, b)
      unless a.length == b.length && \
             a.all? { |i| i == 0 || i == 1 } && \
             b.all? { |i| i == 0 || i == 1 }
        raise 'Input bits must be 0 or 1.'
      end

      out = []
      (0...a.length).reduce(0) do |carry, i|
        if i == 0
          ha = HalfAdder.run(a.reverse[i], b.reverse[i])
          out = [ha[1]] + out
          ha[0]
        else
          fa = FullAdder.run(carry, a.reverse[i], b.reverse[i])
          out = [fa[1]] + out
          fa[0]
        end
      end
      out
    end
  end
end
