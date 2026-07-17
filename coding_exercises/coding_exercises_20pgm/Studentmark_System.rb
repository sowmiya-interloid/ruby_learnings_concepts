student_marks={}

p "Enter the how many students"

count=gets.chomp.to_i

count.times do 
    p "Enter the Student name"

    name=gets.chomp
    p "Enter the Student mark"
    mark=gets.chomp.to_i
    student_marks[name]=mark
end


puts "Student Mark Details!!!!!!!!!!!!!!!!!"
student_marks.each do |key,value|
    p "#{key}   ==>>   #{value}"
end



