#simple loop


#useful loop

i=0;
loop do
    puts i
    i+=1
    if i==10
        break
    end
end

#age=gets.chomp.to_i
age=4
while age>=0
    puts age
    age=age-5
end

puts "-----------"

age = gets.chomp.to_i
until age<0
    puts age
    age=age-3
end


puts";;;;;;;;;;;;"
i=0
age=[10,9,8,7,6,5,4,3,2,1]
for i in age do
    puts i
end