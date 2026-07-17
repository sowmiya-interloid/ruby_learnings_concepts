arr1 = [10,10,20,30,46,78]

arr2 = [45,89,90,90,10]

new_arr=arr1+arr2

p new_arr

#Remove Duplicates

remove_duplicates=[]

new_arr.each do |n|

    if(!remove_duplicates.include?(n))
        remove_duplicates << n
    end
end

p remove_duplicates


