p "Please enter the student class"
studentcls=gets.chomp.to_i

if studentcls>=1 && studentcls<=5
    p "prime school"
elsif studentcls>=6 && studentcls<=8
    p "Mid school"
elsif studentcls>=9 && studentcls<=12
    p "Higher Secondary school"
else 
    p "sorry invalid!!!!!!!!!!!!!!!"
end