marks = []



5.times do |i|
    puts "Enter a Student #{i+1}:"
    mark = gets.chomp.to_i
    marks.push(mark)
end

puts "Marks are:"

marks.each do |mark|
    puts mark
end