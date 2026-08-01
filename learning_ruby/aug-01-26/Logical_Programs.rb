# 1. Move All Zeros to the End

arr = [1, 0, 2, 0, 3, 4, 0]

new_arr=[]
i=0

length=arr[0]

while(i<arr.length)
    if(arr[i]!=0)
        new_arr << arr[i]
        
    end
    i+=1
end

i=new_arr.length

while(i<arr.length)

    new_arr << 0
    i+=1
end

p new_arr

p "==========================================================================================="

# 2. Find the Second Largest Number


arr = [10, 45, 32, 67, 89, 89, 23]

max=arr[0]

secondmax=arr[0]

i=0

while(i<arr.length)

    if(max<arr[i])
        secondmax=max
        max=arr[i]
    elsif(arr[i]>secondmax && max!=arr[i])
        secondmax=arr[i]
    end
    i+=1
end


p secondmax

p "==========================================================================================="

# 3. Find Missing Number

arr = [1, 2, 3, 4, 5, 6,7,8,9,11,12,14]

i=0
while(i<arr.length-1)
    if(arr[i+1]-arr[i]!=1)
        p arr[i]+1
    end
    i+=1
end

p "==========================================================================================="


