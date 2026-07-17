p "Please Enter the Number"

num=gets.chomp.to_i

sum=0

(1..num).each do |n|
    sum=sum+n
end

p sum