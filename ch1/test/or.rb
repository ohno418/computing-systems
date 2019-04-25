require './or'

if Or.new(0, 0).out == 0 && \
   Or.new(0, 1).out == 1 && \
   Or.new(1, 0).out == 1 && \
   Or.new(1, 1).out == 1
  puts 'Success'
else
  raise 'Failed'
end
