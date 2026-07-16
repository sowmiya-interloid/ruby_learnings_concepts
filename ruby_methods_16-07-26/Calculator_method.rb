def add(a,b)
    p a+b
end
def sub(a,b)
    p a-b
end
def mul(a,b)
    p a*b
end
def div(a,b)
    p a/b
end
def mod(a,b)
    p a%b
end



num1=gets.chomp.to_i
num2=gets.chomp.to_i

p "Please pick the options  +,-,/,*,%"

sym=gets.chomp

case sym
    when "+"
    add(num1,num2)
    when "-"
    sub(num1,num2)
    when "*"
    mul(num1,num2)
    when "/"
    div(num1,num2)
    when "%"
    mod(num1,num2)
end