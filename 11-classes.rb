class Define
    
    attr_accessor :name #both getter and setter
    
    def initialize
    @name="Abhinav"
    end  
 
end


one = Define.new
p one.name

p one.name = "Hello"