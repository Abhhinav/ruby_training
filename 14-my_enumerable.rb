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

    def sort(num1,num2)
    results =[]
    each do |index|
    if num1<num2
        num1,num2 = num2,num1
        results << num1+num2
    end
    end
    results
    end

    def max (num1,num2)
        result_max =0
        each do |index|
        if num1>num2
            num1,num2 = num2,num1
            results = num1
        end
        end
        result_max
        end   
end