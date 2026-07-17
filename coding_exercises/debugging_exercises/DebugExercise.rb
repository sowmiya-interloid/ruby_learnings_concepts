# 1. if(x=5)  it will assign the value(x=5) not comparing here, so solution is ===>> if(x==5)

x=5
if(x==5)
    p "x is equal to 5"
end

#2. missing end on if (get SyntaxError-Unmatched keyword, missing `end' like that)
x=true
if(x==true)
    p "Hiiii"
end 

#3. block parameter is not closed with |

3.times { |i| puts i}

#4. end keyword is missing

def area(w,h)
    w*h
end
w=40
h=10
p area(w,h)

#5. will get output as nil because 5-index is not present in the array it will consider as nil

arr = [10, 20, 30]
p arr[5]

#6. Here i never change(so loop executes in infinity times)
# i = 1
# while i < 5
#   puts i
# end   
# SOLUTION
i = 1
while i < 5
    puts i
    i=i+1
end 

#7. case day when "Mon" puts "x" (no then/newline)
# Ruby expects when and its code to be separated by a newline or then

day = "Mon"

case day
when "Mon" then puts "x"
end

#8.  hash[:naem] (typo key) ==>Since that key doesn't exist in the hash, Ruby returns:nil
student = {
    name: "Priya",
}
p student[:naem]

#solution
p student[:name]

#9.  5.upto(1){|n| ...} (wrong direction)
# upto counts from a smaller number up to a larger number.

# solution
1.upto(5) do |n|
    puts n
end 
# otherwise use downto
5.downto(1) do |n|
    puts n
end


#10. "5" + 2 (String + Integer)====>TypeError: no implicit conversion of Integer into String
# solution

p "5"+2.to_s
p "5".to_i+2

#11. nums.push (no argument)
nums = [1, 2, 3]
p nums.push

p nums.push(4)      #Using push method atleast one element we want to insert

#12.  loop do puts 1 (no break)==>(so loop executes infinity times)

loop do 
    puts 1
    break
end

#13. unless age>18 else ...
age = 16

unless age > 18
    puts "Not eligible"
else
    puts "Eligible"
end


#14. def greet puts name end; greet (name undefined)===>Get NameError
#solution
def greet(name)
    puts name 
end 
name="Ram"
greet(name)

#15. [1,2,3].map { } (empty block)====>[nil, nil, nil]

res=[1,2,3].map { }
p res


#soution
res=[1,2,3].map {|n| n+3}
p res

