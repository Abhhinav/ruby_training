module MyEnumerable
    def select(&block)
        result = []
        each do |element|
            puts element
        if element.downcase.include?("v")
        result << element
        else
            result << nil
        end
        result
     end
  
    end
end