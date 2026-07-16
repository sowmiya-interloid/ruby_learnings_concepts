p "PLease Enter the numbers:"

num1=gets.chomp.to_i
num2=gets.chomp.to_i
num3=gets.chomp.to_i

if(num1>num2 && num1>num3)
    p "The num1 #{num1} is big"
elsif(num2>num3)
    p "The num2 #{num2} is big"
else
    p "The num3 #{num3} is big"
end
    