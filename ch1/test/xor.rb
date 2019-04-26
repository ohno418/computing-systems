require_relative '../xor'

if Xor.new(0, 0).out == 1 && \
   Xor.new(0, 1).out == 0 && \
   Xor.new(1, 0).out == 0 && \
   Xor.new(1, 1).out == 1
  puts 'Success'
else
  raise 'Failed'
end
