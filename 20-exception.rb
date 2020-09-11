begin
    1/0 #error
rescue ZeroDivisionError => e
    puts e.message
    puts e.backtrace.inspect
rescue ecxeption => e 
    p e 
else
ensure
    puts "Finally Block"
end