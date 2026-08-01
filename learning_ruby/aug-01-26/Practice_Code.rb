text=File.read("todo.txt")

puts text
puts text.length

p "======================================================"

File.open("Story.txt","w") do |f|
    f.puts("Line one")
    f.puts("Line two")
    f.write("No newline")
    f.write("  Added here")
end

p "======================================================"

File.open("log1.txt","a") do |f|
    f.puts("User Logged in #{Time.now}")
end

p "======================================================"

File.foreach("students_file.txt") do |line|
    puts "Name and roll no : #{line.chomp}"
end

p "======================================================"

begin
    data=File.read("report.txt")
    puts data
rescue Errno::ENOENT
    puts "File not found check the name once again!!"
rescue Errno::EACCES
    puts "Permission denied"
end

p "======================================================"

begin
    data=File.read("todo.txt")
    puts data
rescue Errno::ENOENT
    puts "File not found check the name once again!!"
rescue Errno::EACCES
    puts "Permission denied"
end