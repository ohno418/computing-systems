require './not'

if Not.new(0).out == 1 && \
   Not.new(1).out == 0
  puts 'Success'
else
  raise 'Failed'
end
