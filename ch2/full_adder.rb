require_relative './half_adder'
require_relative './logic_gates/or'

module FullAdder
  # input:  a, b, c
  # output: carry, sum
  class << self
    def run(a, b, c)
      unless [0, 1].include?(a) && \
             [0, 1].include?(b) && \
             [0, 1].include?(c)
        raise 'Input bits must be 0 or 1.'
      end
      [
        HalfAdder.run(
          HalfAdder.run(a, b)[0],
          HalfAdder.run(HalfAdder.run(a, b)[1], c)[0]
        )[1],
        HalfAdder.run(HalfAdder.run(a, b)[1], c)[1]
      ]
    end
  end
end
