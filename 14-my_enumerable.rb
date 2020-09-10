module MyEnumerable
    def select(&block)
        result = []
        each do |element|
            if element.downcase.include?("v")
            result << element
            else
            nil
            end
        
        end
     result
    end
end