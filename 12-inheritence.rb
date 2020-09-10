class Animal
    attr_accessor :name
def initialize
    puts "A"
    @name="Animal"
end
def walk
    puts "A"
    puts "I walk"
end
end


class Dog < Animal
    attr_accessor :name
def initialize
    puts "D"
    @name="Dog"
    super
end
def walk 
    puts "D"
    puts "Bhow Bhow"
    super
end
end

one = Animal.new
two = Dog.new

puts one.name
puts one.walk
puts two.name
puts two.walk