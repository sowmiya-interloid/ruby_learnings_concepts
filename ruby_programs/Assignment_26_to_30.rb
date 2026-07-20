# 26. Compress String


def compress_string(input)
    result=""
    current_ch=input[0]
    count=1
    iter=1
    while(iter<input.length)
        if(input[iter]==current_ch)
            count+=1
        else
            result=result+current_ch+count.to_s
            count=1
            current_ch=input[iter]
        end
        iter=iter+1
    end
    result = result + current_ch + count.to_s
    return result
end

input="aaabbccccdaa"
p compress_string(input)

# 27. Find First Non-Repeating Character

def nonrepeatingchar(input)
    new_hash={}
    input.each_char do |ch|
        if(new_hash.include?(ch))
            new_hash[ch]+=1
        else
            new_hash[ch]=1
        end
    end
    new_hash.each do |key,value|
        if(value==1)
            return key
            break
        end
    end

end

input="swiss"

p nonrepeatingchar(input)


# 28. Inventory Update


def inventoryex(inventory,sold)
    inventory_update={}



inventory.each do |key,value|
    if(sold.include?(key))
        inventory_update[key]=value-sold[key]
    else
        inventory_update[key]=value
    end

end

return inventory_update

end



inventory={apple:10,orange:5,banana:7}

sold={apple:3,banana:5}

p inventoryex(inventory,sold)

# 29. Build a Menu Program

numbers=[]
loop do

    p "Please Enter the Choice  1.Add Number||2.Show Numbers||3.Find Largest||4.Find Smallest||5.Exit"

    choice=gets.chomp.to_i

    
    case choice
    when 1

        p "Please tell how many numbers u want to enter:"

        num=gets.chomp.to_i

        i=1
        while(i<=num)
            p "please Enter the No #{i} : "

            number=gets.chomp.to_i

            numbers << number
            i+=1
        end

    when 2

        p "The available numbers are"
        
        p numbers

        p "====================OR========================"

        numbers.each do |n|
            p n
        end

    when 3
        max=0
        numbers.each do |num|
            if(max<num)
                max=num
            end
        end

        p "The Largest No is #{max}"
    
    when 4
        min=numbers[0]
        numbers.each do |num|
            if(min>num)
                min=num
            end
        end

        p "The Smallest No is #{min}"

    when 5
        p "Thank you!!!!!!!"
        break
    end
end



# 30. Mini Student Result System

students = {}

p "How many studens enter in a list"
num=gets.chomp.to_i
i = 1

while i <= num
    p "Enter Student #{i} Name: "
    name = gets.chomp
    p "Enter #{name}'s Marks: "
    marks = gets.chomp.to_i
    students[name] = marks
    i += 1
end

# Highest Mark

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

# Average, Pass, Fail & Grade

total = 0
pass_count = 0
fail_count = 0

p "Grades"

students.each do |key, value|
    total += value
    if value >= 50
        pass_count += 1
    else
        fail_count += 1
    end
    if value >= 90
        grade = "A"
    elsif value >= 75
        grade = "B"
    elsif value >= 60
        grade = "C"
    elsif value >= 50
        grade = "D"
    else
        grade = "Fail"
    end

    p "#{key} ===> #{value} : Grade #{grade}"

end

average = total / students.length

p  "Average Mark : #{average}"
p  "Pass Count : #{pass_count}"
p "Fail Count : #{fail_count}"

















