require_relative '../full_adder'

if FullAdder.run(0, 0, 0) == [0, 0] && \
   FullAdder.run(0, 0, 1) == [0, 1] && \
   FullAdder.run(0, 1, 0) == [0, 1] && \
   FullAdder.run(0, 1, 1) == [1, 0] && \
   FullAdder.run(1, 0, 0) == [0, 1] && \
   FullAdder.run(1, 0, 1) == [1, 0] && \
   FullAdder.run(1, 1, 0) == [1, 0] && \
   FullAdder.run(1, 1, 1) == [1, 1]
  puts 'Success'
else
  raise 'Failed'
end
