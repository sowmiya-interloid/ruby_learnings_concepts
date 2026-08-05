t1=Thread.new do
    5.times {puts "A"}
end

t2=Thread.new do 
    5.times {puts "B"}
end



[t1,t2].each(&:join)