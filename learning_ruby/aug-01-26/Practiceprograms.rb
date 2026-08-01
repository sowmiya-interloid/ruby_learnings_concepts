File.open("Sample.txt") do |file|
    file.each_line do |line|
        puts line
    end
end

p "=========================================="

#count lines

content=File.read("Sample.txt")
puts content.lines.count

p "=========================================="
c=0
File.open("Sample.txt") do |file|
    file.each_line do |_line|
        c+=1
    end
end


p c