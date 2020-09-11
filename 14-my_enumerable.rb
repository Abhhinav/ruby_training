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
    
    def min (num1,num2)
        result_min =10
        each do |index|
        if num1>num2
            num1,num2 = num2,num1
            results = num2
        end
        end
        result_min
    end  
    def zip(arr)
    result_zip = []
    each do |index|
        result_zip << arr[index]
    end
    result_zip
    end 
end