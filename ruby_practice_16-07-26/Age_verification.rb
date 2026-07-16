p "PLease enter the age: "

age=gets.chomp.to_i

if(age>=18)
    p "You're Major"
else 
    p "You're Minor"
end