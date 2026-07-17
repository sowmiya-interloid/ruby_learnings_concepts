num=gets.chomp.to_i

(1..num).each do |i|
    (1..num).each do |j|
        print "* "
    end
    puts
end

p "===================================="

start=1

(1..num).each do |i|
    (1..start).each do |j|
        print "* "
    end
    puts
    start+=1
end

p "===================================="

start=num

(1..num).each do |i|
    (1..start).each do |j|
        print "* "
    end
    puts
    start-=1
end