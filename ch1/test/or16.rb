require_relative '../or16'

if Or16.new(
            [0,1,0,0,0,1,0,1,1,0,0,1,1,0,1,0],
            [1,1,0,1,0,1,0,0,0,0,0,0,1,0,1,1]
   ).out == [1,1,0,1,0,1,0,1,1,0,0,1,1,0,1,1]
  puts 'Success'
else
  raise 'Failed'
end
