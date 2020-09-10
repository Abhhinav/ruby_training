num=[1,2,3,4,5,6,7,8,9,10]

greater_5 = num.map do |n|
    n>5
end
puts greater_5

puts "select"

greater_5 = num.select do |n|
    n>5
end
puts greater_5


