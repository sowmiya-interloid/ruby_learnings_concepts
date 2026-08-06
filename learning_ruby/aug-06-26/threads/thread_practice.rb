t1=Thread.new do
    5.times do
        puts "A"
    end
end


t2=Thread.new do 
    5.times do
        puts "B"
    end
end

t2.join
t1.join

