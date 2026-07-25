num=[1,2,3,4,5,6,7,8,9,10]


filtered_num=num.filter_map do |n|
    n*2 if n.odd?
        
end

p filtered_num

result = num.filter { |n| n > 5 }
            .map { |n| n * 2 }


p result