# 1. Write a program that saves a to-do list to a file

File.open("todo.txt","a") do |file|

    p "How many task u want to add : "

    num=gets.chomp.to_i

    num.times do |i|

        p "Enter Task #{i+1}"

        task=gets.chomp

        file.puts(task)
    end
end

p "Task saved Successfully......"
p "======================================================================="

#Read a file and count how many lines it has

c=0
File.open("todo.txt","r") do |file|
    file.each_line do |line|
        c+=1
    end
end

p c

p "======================================================================="

# Append the current time to a log file each run

File.open("log.txt","a") do |file|
    file.puts("File added time is #{Time.now}")
end


puts "Log Time add Successfully!!!!!!"

puts "Files Added Successfully...!!!!!!"

p "======================================================================="

# Copy the contents of one file into another

content=File.open("todo.txt","r")

File.write("copy_file.txt",content)

p "File Saved Succesfully......"

p "=============================="


