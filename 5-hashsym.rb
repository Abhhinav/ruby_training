city={mumbai: 5,pune: 4, lucknow:6}

city.each do|key,value|
    puts "#{key} = #{value}"
end

city.each_key do|key|
    puts key
end

city.each_value do|value|
    puts value
end

city.each_with_index do|(key,value),index|
    puts "#{key} = #{value}: #{index}"
end