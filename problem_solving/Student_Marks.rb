tamil=gets.chomp.to_i
english=gets.chomp.to_i
maths=gets.chomp.to_i
physics=gets.chomp.to_i
chemistry=gets.chomp.to_i
computer_science=gets.chomp.to_i

student_marks=[]

student_marks.push(tamil,english,maths,physics,chemistry,computer_science)
p student_marks

sum=0

student_marks.each do |num|
    sum=sum+num
end

p "Sum of the Mark is #{sum}"

avg=sum/6

p "Average Mark is #{avg}"
