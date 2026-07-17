def largest(num1,num2,num3)
    if(num1>num2 && num1>num3)
        "num1 : #{num1} is Largest"
    elsif(num2>num3)
        "num2 : #{num2} is Largest"
    else
        "num3 : #{num3} is Largest"
    end
end


num1=gets.chomp.to_i
num2=gets.chomp.to_i
num3=gets.chomp.to_i

p largest(num1,num2,num3)

