students = ["sowmiya","priya","meera","keerthi","Menaka"]

p "Student List"

students.each_with_index do |student, index|
  puts "#{index + 1} => #{student}"
end