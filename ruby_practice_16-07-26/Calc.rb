p "Please Enter the 2 Number to do Calculation"

num1=gets.chomp.to_i
num2=gets.chomp.to_i

p "PLease enter any one operateor +,-,/.*,%"

sym=gets.chomp

case sym
when "+" then p num1+num2
when "-" then p num1-num2
when "*" then p num1*num2
when "%" then p num1%num2
when "/" then p num1/num2

else 
    p "You're something wrong"

end


