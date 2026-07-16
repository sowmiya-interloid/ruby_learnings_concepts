p "PLease enter the age: "

age=gets.chomp.to_i

if(age>=13)
    p "You have full ticket price"
else 
   p "You have half ticket price"
end