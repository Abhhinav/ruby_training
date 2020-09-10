age = 15
status = if age>15
    :good
else
    :bad
end
p status

hash=18
a= hash<18 ? :minor : :adult
p a


shirt_size = :l
label = if shirt_size == :s
    "small"
elsif shirt_size == :l
"largs"
else
    "unknow"
end
puts label


age=20
case age 
when 18 
    puts "adult"
when 10
    puts "kid"
else
    puts "lemme guess"
end