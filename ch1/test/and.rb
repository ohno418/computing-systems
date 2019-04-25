require './and'

if And.new(0, 0).out == 0 && \
   And.new(0, 1).out == 0 && \
   And.new(1, 0).out == 0 && \
   And.new(1, 1).out == 1
  puts 'Success'
else
  raise 'Failed'
end
