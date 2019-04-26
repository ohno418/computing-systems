require_relative '../half_adder'

if HalfAdder.run(0, 0) == [0, 0] && \
   HalfAdder.run(0, 1) == [0, 1] && \
   HalfAdder.run(1, 0) == [0, 1] && \
   HalfAdder.run(1, 1) == [1, 0]
  puts 'Success'
else
  raise 'Failed'
end
