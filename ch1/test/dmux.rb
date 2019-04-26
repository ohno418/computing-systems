require_relative '../dmux'

if DMux.new(0, 0).out == [0, 0] && \
   DMux.new(0, 1).out == [0, 0] && \
   DMux.new(1, 0).out == [1, 0] && \
   DMux.new(1, 1).out == [0, 1]
  puts 'Success'
else
  raise 'Failed'
end
