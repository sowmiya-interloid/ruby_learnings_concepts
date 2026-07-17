# 1. Count Character Frequency

string="Programming"

new_hash={}

count=0

string.each_char do |ch|
    if(new_hash.include?(ch))
        count=count+1
        new_hash[ch]=count
    else
        count=1
        new_hash[ch]=count
    end
end

p new_hash


#  2. Find the Second Largest Number

numbers = [12, 45, 67, 89, 45, 23, 89, 78]

max=numbers[0]
second_max=numbers[0]

numbers.each do |num|
    if(max<num)
        second_max=max
        max=num
    elsif(num > second_max && num != max)
        second_max = num
    end
end

p second_max

#  3. Reverse Every Word

sentence="Ruby is awesome"

new_sentence=sentence.split(" ")

reverse_sentence=""

new_sentence.each do |str|

    word=str
    
    last_index=word.length-1

    while(last_index>=0)
        reverse_sentence=reverse_sentence+word[last_index]
        last_index=last_index-1
    end
    reverse_sentence=reverse_sentence+" "
end

p reverse_sentence

# 4. Find Duplicate Elements

arr=[2,5,3,2,7,8,5,9,7]

new_array=[]
duplicate_elements=[]

arr.each do |num|
    if(!new_array.include?(num))
        new_array << num
    else
        duplicate_elements << num
    end
end

p duplicate_elements

# 5. Count Vowels and Consonants

string="Programming"
new_str=string.downcase

vowel_count=0
consonant_count=0

new_str.each_char do |ch|
    if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u')
        vowel_count+=1
    else
        consonant_count+=1
    end
end

puts "Vowels : #{vowel_count}"
puts "Consonants : #{consonant_count}"








