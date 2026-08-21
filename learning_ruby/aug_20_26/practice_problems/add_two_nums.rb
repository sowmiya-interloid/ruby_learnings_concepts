def add_two_numbers(l1,l2)
    store1 =  l1.join("").reverse.to_i
    store2 = l2.join("").reverse.to_i

    sum = store1 + store2
    add_array = []

    while(sum != 0)
        dig = sum % 10
        add_array << dig
        sum /= 10
    end

    add_array
end


l1 = [2,4,3]
l2 = [5,6,4]

p add_two_numbers(l1,l2)
    

