arr=[1,1,1,1,2,2,2,2,3,3,3,4,4,5,6,7,8,8,8,9]

p arr

Unique_arr=arr.uniq

p Unique_arr

# Without using uniq method 

uniq_arr=[]

arr.each do |n|
    if(!uniq_arr.include?(n))
        uniq_arr << n
    end
end

p uniq_arr