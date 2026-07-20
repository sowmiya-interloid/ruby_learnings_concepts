# 12. Find Missing Number


arr = [1, 2, 3, 5, 6, 7]

(0 ... arr.length - 1).each do |i|
    if arr[i + 1] != arr[i] + 1
        puts arr[i] + 1
        break
    end
end

# 13. Merge Two Arrays Without Duplicates

a=[1,2,3,4]
b=[3,4,5,6]

merge_arr=[]

a.each do |n|
    if(!merge_arr.include?(n))
        merge_arr << n
    end
end

b.each do |n|
    if(!merge_arr.include?(n))
        merge_arr << n
    end
end

p merge_arr

# 14. Most Frequent Element

arr = [4, 5, 1, 5, 2, 4, 5, 3]

frequency = {}


arr.each do |num|
    if(frequency.include?(num))
        frequency[num] += 1
    else
        frequency[num] = 1

    end
end

max_count = 0
most_frequent = nil

frequency.each do |key, value|
    if value > max_count
        max_count = value
        most_frequent = key
    end
end

puts " Most Frequent Element : #{most_frequent}"

# 15. Count Word Frequency

str="ruby ruby rails ruby rails html css html"

new_hash={}

new_arr=str.split(" ")


new_arr.each do |str|
    if(new_hash.include?(str))
        new_hash[str]+=1
    else
        new_hash[str]=1
    end
end

p new_hash



