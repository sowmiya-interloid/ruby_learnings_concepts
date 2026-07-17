student_record=[]
loop do
puts "Please Enter the choice:"
puts "1. Add Stuent"
puts "2. View All Students"
puts "3. Search Student"
puts "4. Update Student"
puts "5. Delete Student"
puts "6. Exit"



choice=gets.chomp.to_i
p "========================================================================================================="

case choice
when 1
    p "How many students you want to add?"

    count=gets.chomp.to_i
    count.times do 
        p "Enter the Student name:"
        name=gets.chomp
        student_record << name
    end
    p "========================================================================================================="
when 2

    p "View all the Students!!!!!!!!!!"
    student_record.each do |name|
        p name
    end
    p "========================================================================================================="
when 3
    p "Search the particular Student"
    p "Please Enter Which student you want to see..."
    stu_name=name=gets.chomp
    found = false
    student_record.each_with_index do |name,index|
        if(stu_name==name)
            p "#{name} present #{index} index position"
            found = true
        end
    end
    puts "Student not found." unless found
    p "========================================================================================================="
    
when 4
    puts "Enter the student name to update:"
    old_name = gets.chomp

    if student_record.include?(old_name)
        index = student_record.index(old_name)

        puts "Enter the new student name:"
        new_name = gets.chomp

        student_record[index] = new_name

        puts "Student updated successfully!"
    else
        puts "Student not found!"
    end
    p "========================================================================================================="
when 5
    puts "Enter the student name to delete:"
    delete_name = gets.chomp

    if student_record.include?(delete_name)
        student_record.delete(delete_name)

        puts "Student deleted successfully!"
    else
        puts "Student not found!"
    end
    p "========================================================================================================="
when 6

    puts "Thank you!!!!!!!!!!!!!"
    p "========================================================================================================="
    break
end


end
