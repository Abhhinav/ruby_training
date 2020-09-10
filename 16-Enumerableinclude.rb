class Store 
   
    include Enumerable
  
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
p mumbai.select { |snack| snack.downcase.include?("v")}