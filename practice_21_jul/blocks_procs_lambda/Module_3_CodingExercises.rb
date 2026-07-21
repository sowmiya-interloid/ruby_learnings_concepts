# 1.=========================

def time_it
    start=Time.now
    
    yield
    
    finish=Time.now

    p "#{start}"

    p "#{finish}"
end

time_it do
    sleep 1
end

p "=================================================="

def time_it_1
    
    p "start"
    
    yield

    p "end"
end

time_it_1 do
    
    i=1
    while(i<=5)
        puts i
        i+=1
    end

end

p "======================================================="

# 2. =====================================

name=proc {|first,last| "#{first} #{last}"}

puts name.call("Sowmiya","T")


p "======================================================="

# 3. =====================================

str = -> (string) do
    string.strip.downcase.capitalize
end
p str.call(" Sowmiya") 

p "======================================================="

# 4. =====================================

def repeat(n)
    n.times do
        yield
    end
end

repeat(5) do
    puts "Hello"
end