class Object
def self.const_missing(c)
    puts "#{c} is missing. Loading it!"
    require_relative "./17-cat"
    Cat
end
end

puffy_cat = Cat.new
puffy_cat.sound
