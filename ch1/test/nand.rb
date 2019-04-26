require_relative '../nand'

if Nand.new(0, 0).out == 1 && \
   Nand.new(0, 1).out == 1 && \
   Nand.new(1, 0).out == 1 && \
   Nand.new(1, 1).out == 0
  puts 'Success'
else
  raise 'Failed'
end
