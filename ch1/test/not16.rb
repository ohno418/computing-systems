require_relative '../not16'

if Not16.new([0,1,0,0,0,1,0,1,1,0,0,1,1,0,0,0]).out == \
             [1,0,1,1,1,0,1,0,0,1,1,0,0,1,1,1]
  puts 'Success'
else
  raise 'Failed'
end
