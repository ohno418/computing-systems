require './mux'

if Mux.new(0, 0, 0).out == 0 && \
   Mux.new(0, 1, 0).out == 0 && \
   Mux.new(1, 0, 0).out == 1 && \
   Mux.new(1, 1, 0).out == 1 && \
   Mux.new(0, 0, 1).out == 0 && \
   Mux.new(0, 1, 1).out == 1 && \
   Mux.new(1, 0, 1).out == 0 && \
   Mux.new(1, 1, 1).out == 1
  puts 'Success'
else
  raise 'Failed'
end
