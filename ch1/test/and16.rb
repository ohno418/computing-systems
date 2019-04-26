require_relative '../and16'

if And16.new(
            [0,1,0,0,0,1,0,1,1,0,0,1,1,0,1,0],
            [1,1,0,1,0,1,0,0,0,0,0,0,1,0,1,1]
   ).out == [0,1,0,0,0,1,0,0,0,0,0,0,1,0,1,0]
  puts 'Success'
else
  raise 'Failed'
end
