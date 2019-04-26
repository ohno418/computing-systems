require_relative './logic_gates/and'
require_relative './logic_gates/not'
require_relative './logic_gates/xor'

module HalfAdder
  # input:  a, b
  # output: carry, sum
  class << self
    def run(a, b)
      unless [0, 1].include?(a) && \
             [0, 1].include?(b)
        raise 'Input bits must be 0 or 1.'
      end
      [
        And.new(a, b).out,
        Not.new(Xor.new(a, b).out).out
      ]
    end
  end
end
