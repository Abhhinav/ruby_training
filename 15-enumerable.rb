require_relative "./14-my_enumerable"
class Store 
   
    include MyEnumerable
  
    attr_reader :snacks 
  
    def initialize 
      @snacks = [] 
    end
  
    def add_snack(snack)
      @snacks << snack
    end
  
   
    def each 
      snacks.each do |snack|
        yield snack
      end
    end
  
end

mumbai = Store.new
mumbai.add_snack("Vada Pav")
mumbai.add_snack("Samosa")
mumbai.add_snack("Pepsi")
#p mumbai.select { |snack| snack.downcase.include?("v")}
numbers = [5,8,10,9,3,0,4,1,7,2]
p numbers.sort{|a,b| b <=> a}