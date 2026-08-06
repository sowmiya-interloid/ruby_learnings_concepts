# Reverse a String without using .reverse

str="sow"
rev=""

i=0
while(i < str.length)

    rev=str[i] + rev

    i+=1
end

puts rev

if (rev==str)
    puts "Reverse a String Done!!!!"
else
    puts "Not Reversed"
end

