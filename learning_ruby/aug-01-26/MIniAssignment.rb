# Add Students----append name + roll number to the file

File.open("students_file.txt","a") do |file|

    p "How many Students u want to add : "

    num=gets.chomp.to_i

    num.times do |i|

        p "Enter Student Name :  #{i+1}"

        name=gets.chomp

        p "Enter Student RollNo :  #{i+1}"

        n=gets.chomp.to_i

        file.write("#{name}")

        file.write("  #{n}")

        file.puts

        p "File Added Successfully!!!!"
    end
end

p "=========================================================================================================="

# Read Students--display all saved students

File.open("students_file.txt") do |file|
    file.each_line do |line|
        puts line
    end
end

p "=========================================================================================================="

# Append Students


File.open("students_file.txt","a") do |file|

    p "Please Enter the student name : "
    name=gets.chomp

    p "Please Enter the student roll no : "
    roll_no=gets.chomp

    file.write("#{name}")

    file.write("  #{roll_no}")

    file.puts

end
p "=========================================================================================================="

# Search Student 

puts "Enter student name to search:"
search_name = gets.chomp

found = false

File.open("students_file.txt","r") do |file|
    file.each_line do |line|
        name=line.chomp
        
        if(name==search_name)
            puts "#{name} found"
            found = true
            break
        end
    end
end

puts "Student not found" unless found



