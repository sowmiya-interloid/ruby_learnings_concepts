# Q1. Count Character Frequency

input="programming"

hash={}

input.each_char do |val|
    if(hash.include?(val))
        hash[val]=hash[val]+1
    else
    hash[val]=1
    end
end

p hash

p "============================================================================================="

# Q2. Reverse a String

str="interview"
rev_str=""

len=str.length-1

while(len>=0)

    rev_str=rev_str+str[len]
    len=len-1
end

p rev_str

p "============================================================================================="

# Q3. Count Vowels & Consonants

input="Ruby Programming"

new_str=input.gsub(" ","")


vowel_count=0
consonants_count=0

new_str.each_char do |ch|
    if(ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U'||ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u')
        vowel_count+=1
    else
        consonants_count+=1
    end
end

p "Vowel count is #{vowel_count}"
p "Consonants count is #{consonants_count}"

p "============================================================================================="

# Q4. Largest Number

max_arr=[12,45,7,89,32,67]

max=max_arr[0]

max_arr.each do |n|
    if(max<n)
        max=n
    end
end

p "The maximum val is #{max}"

p "============================================================================================="

# Q5. Even & Odd Count

input = [10,21,34,45,56,77,88]

even_count=0
odd_count=0

input.each do |num|
    if(num%2==0)
        even_count+=1
    else
        odd_count+=1
    end
end

p "Even count is #{even_count}"
p "Odd count is #{odd_count}"

p "============================================================================================="

# Q6. Second Largest Number

input=[15,80,23,99,67,99,54]

max=input[0]
second_max=input[0]

input.each do |num|
    if(max<num)
        second_max=max
        max=num
    elsif(max<second_max && max!=num)
        second_max=max
    end
end

p  " THe second maximum is #{second_max}"

p "============================================================================================="

# Q7. Remove Duplicates

input=[1,2,3,2,5,1,7,5,8]
remove_duplicate=[]

input.each do |n|
    
    if(!remove_duplicate.include?(n))
        remove_duplicate << n
    end
end


p remove_duplicate

p "============================================================================================="

# Q8. Left Rotate Array

arr=[10,20,30,40,50]

first=arr[0]

i=0

while(i<arr.length)
    arr[i]=arr[i+1]
    i=i+1
end

arr[arr.length-1]=first

p arr

p "============================================================================================="

# Q9. Check Anagram

input1="listen"
input2="silent"

new_hash={}

if(input1.length!=input2.length)
    p "Not a anagram"
else

    input1.each_char do |ch|
        if(new_hash.include?(ch))
            new_hash[ch]+=1
        else
            new_hash[ch]=1
        end
    end

    input2.each_char do |ch|
        if(new_hash.include?(ch))
            new_hash[ch]-=1
        else
            new_hash[ch]=-1
        end
    end
end

# p new_hash
found=true
new_hash.each do |key,val|
    if(val!=0)
        found false
        break
    end

end

if(found)
    p " #{input1} and #{input2} is a Anagram"
else
    p "Not a anagram"
end

p "============================================================================================="

# Q10. Multiplication Table

num=17

(1..10).each do |i|

    puts "#{i} * #{num} = #{i*num}"

end 

p "============================================================================================="

# Q11. Numbers Divisible by 3 and 5

(1..200).each do |num|
    if(num%3==0 && num%5==0)
        puts "The divisible by both 3 and 5 num is #{num}"
    end
end

p "============================================================================================="

# Q12. Word Frequency

str="ruby makes ruby developers happy"

new_arr=str.split(" ")

hash={}

new_arr.each do |word|
    if(hash.include?(word))
        hash[word]+=1
    else
        hash[word]=1
    end
end
p hash

p "============================================================================================="

# Q13. Merge Arrays

a=[1,3,5,7]
b=[2,3,5,8,9]

new_arr=a + b

p new_arr


remove_duplicates=[]

new_arr.each do |n|
    if(!remove_duplicates.include?(n))
        remove_duplicates << n
    end
end

p remove_duplicates

p "============================================================================================="
    
# Q14. Array to Hash

arr=["Alice","Bob","Charlie","David"]

hash={}

arr.each_with_index do |val,index|

    hash[index+1]=val
end

p hash

p "============================================================================================="

# Q15. Pyramid Pattern


num = 5

(1..num).each do |row|
    (1..(num - row)).each do
        print "  "
    end
    (1..(2 * row - 1)).each do
        print "* "
    end
    puts
end

p "============================================================================================="

# Q16. Missing Number

input=[1,2,3,4,6,7,8,9,10]


(0..input.length-1).each do |i|
    if(input[i+1]!=input[i]+1)
        puts "The missing no is #{input[i]+1}"
        break
    end
end

p "============================================================================================="

#  Q17. Check Sorted Array

input=[5,8,10,15,20]
found=false

(0..input.length-1).each do |i|
    if(input[i]<input[i]+1)

        found=true
    else
        found=false

    end

end

if(found)
    p "It is a Sorted Array"
end

p "============================================================================================="

# Q18. Move Zeros

zero=[4,0,2,0,8,1,0,9]
move_zero=[]

i=0
len=zero.length

while(i<zero.length)
    if(zero[i]!=0)
        move_zero << zero[i]
    end
    i=i+1
end

i=0
len=zero.length

while(i<zero.length)
    if(zero[i]==0)
        move_zero << zero[i]
    end
    i=i+1
end


p move_zero

p "============================================================================================="

# Q19. Longest Word

str="Learning Ruby improves logical thinking"

str_new=str.split(" ")
new_hash={}

str_new.each do |word|
    str=word
    len=str.length
    new_hash[word]=len
end
max=0
longest_word=nil
new_hash.each do |key,val|
    if(max<val)
        max=val
        longest_word=key
    end
end

p "The Longest word is #{longest_word}"

p "============================================================================================="

# Q20. Split Even & Odd

inp=[12,15,19,20,25,30,42]

even_arr=[]
odd_arr=[]

inp.each do |num|
    if(num%2==0)
        even_arr << num
    else
        odd_arr << num
    end
end

p even_arr
p odd_arr

p "============================================================================================="

# Q21. Pair Sum

arr=[3,12,5,10,8,7,6,9]
target=15

i=0

while(i<arr.length-1)
    if(arr[i]+arr[i+1]==target)

        p "The pair sum is #{arr[i]} and #{arr[i+1]}"
        
    end
i=i+1
end

p "============================================================================================="

#  Q22. First Non-Repeating Character

text="swiss"
hash={}

text.each_char do |ch|

    if(hash.include?(ch))
        hash[ch]+=1

    else
        hash[ch]=1
    end
end

hash.each do |key,val|
    if(val==1)
        p " The First Non-Repeating Character #{key}"
        break
    end
end

p "============================================================================================="

# Q23. String Compression

str="aaabbccccdde"
i=1
first=str[0]

new_str=""

c=1
while(i<str.length)
    

    if(str[i]==first)
        c=c+1
    else
        new_str=new_str+first+c.to_s
        c=1
        first=str[i]
    end
    i+=1
end

new_str=new_str+first+c.to_s


p new_str

p "============================================================================================="

## Q24. Student Marks Report


students={
"Alice"=>91,
"Bob"=>78,
"Chris"=>45,
"David"=>88,
"Eva"=>62
}
#  Highest Mark

max=0
max_key=nil

students.each do |key,value|
    if(max<value)
        max=value
        max_key=key
    end
end

p "Highest mark #{max_key} ====>>>> #{max} "


# Lowest Mark

min=students.values.first
min_key=students.keys.first

students.each do |key,value|
    if(min>value)
        min=value
        min_key=key
    end
end

p "Lowest mark #{min_key} ====>>>> #{min} "

# Average, Pass, Fail

total = 0
pass_count = 0
fail_count = 0

students.each do |key, value|
    total += value
    if value >= 50
        pass_count += 1
    else
        fail_count += 1
    end
end
average = total / students.length

p  "Average Mark : #{average}"
p  "Pass Count : #{pass_count}"
p "Fail Count : #{fail_count}"

p "============================================================================================="

# Q25. ATM Menu Program

def deposit(balance)
    puts " Enter deposit amount : "
    amount = gets.chomp.to_i
    if(amount > 0)
        balance += amount
        puts "Deposit successful."
    else
        puts "Invalid amount."
    end
    return balance
end

def withdraw(balance)
    puts "Enter withdrawal amount: "
    amount = gets.chomp.to_i
    if(amount <= 0)
        puts "Invalid amount."
    elsif amount > balance
        puts "Insufficient balance."
    else
        balance -= amount
        puts "Withdrawal successful."
    end
    return balance
end

def check_balance(balance)
    puts "Current Balance: #{balance}"
end

balance = 1000

loop do
    puts "=====ATM MENU ========"
    puts "1.Deposit"
    puts "2.Withdraw"
    puts "3.Check Balance"
    puts "4.Exit"

    puts "Enter your choice: "
    choice = gets.chomp.to_i
    case choice
    when 1
    balance = deposit(balance)

    when 2
    balance = withdraw(balance)

    when 3
    check_balance(balance)

    when 4
    puts "Thank you!!!!!!!!!!!!!!"
    break
    end
end
