def hey (message,py, &block)
puts message
block.call if block_given?
py.call
end


hey "Yes", proc {puts "proc"} do
    puts "block"
end