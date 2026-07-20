# 16. Separate Even and Odd Numbers

input=[1,4,8,7,5,10]

new_hash={}

even_arr=[]
odd_arr=[]

input.each do |n|
    if(n%2==0)
        even_arr << n
    else 
        odd_arr << n
    end
end
new_hash["even"] = even_arr
new_hash["odd"] = odd_arr

p new_hash

# 17. Intersection of Two Arrays

a=[1,2,3,4]
b=[3,4,5,6]

intersection_arr=[]

a.each do |n1|
    b.each do |n2|
        if(n1==n2)
            intersection_arr << n2
        end
    end
end

p intersection_arr


# 18. Count Occurrence of Each String Length

arr=["ruby","java","c","go","python"]

count_arr=[]

count_occurrence_hash={}

arr.each do |arr|
    str_len=arr.length
    
    count_arr << str_len
end
p count_arr
    
count_arr.each do |n|

    if(count_occurrence_hash.include?(n))
        count_occurrence_hash[n]+=1
    else
        count_occurrence_hash[n]=1
    end
end

p count_occurrence_hash

# 19. Find Unique Characters

str="success"

hash={}

str.each_char do |ch|
    if(hash.include?(ch))
        hash[ch]+=1
    else
        hash[ch]=1
    end
end

uniq_char=[]

hash.each do |key,value|
    if(value==1)
        uniq_char << key
    end
end
puts uniq_char.join(",")


# 20. Sort Hash by Value

hash = {ruby: 4,java: 2,python: 5,php: 1}

sorted = {}

while hash.length > 0
    min_key = nil
    min_value = nil

    hash.each do |key, value|
        if min_value.nil? || value < min_value
            min_key = key
            min_value = value
        end
    end
    sorted[min_key] = min_value
    hash.delete(min_key)
end                                       

p sorted