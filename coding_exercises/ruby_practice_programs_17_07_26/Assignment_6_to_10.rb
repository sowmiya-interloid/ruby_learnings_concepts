# 6. Rotate an Array

arr=[1,2,3,4,5]

rotate_arr=[]

len=arr.length-1

while(len>=0)

    rotate_arr << arr[len]
    len-=1
end

p rotate_arr

# 7. Longest Word

sentence="I love ruby language"

new_sentence=sentence.split(" ")
max_count=0
maxlen_word=""

new_sentence.each do |str|
    count=0
    
    word=str
    
    word.each_char do |i|
        count+=1
    end
    
    if(max_count<count)
        max_count=count
        maxlen_word=str
    end
end

puts "Longest Word count : #{max_count}"
puts "Longest Word : #{maxlen_word}"

# 8. Remove Duplicate Characters

input="banana"

new_str=""

input.each_char do |ch|
    if(!new_str.include?(ch))
        new_str << ch
    end
end
p new_str

# 9. Check Palindrome

string="Never Odd Or Even"

new_string=string.downcase.gsub(" ","")

rev_string=""

len=new_string.length-1
while(len>=0)
    rev_string=rev_string+new_string[len]
    len-=1
end

if(rev_string==new_string)
    p "Palindrome"
else
    p "Not a Palindrome"
end

# 10. Sum of Digits

input=48391
sum=0
while(input!=0)
    dig=input%10
    sum=sum+dig
    input=input/10
end
puts "Sum of digits is : #{sum}"
    