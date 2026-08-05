counter = 0

threads = 10.times.map do
  Thread.new do
    counter += 1
  end
end

threads.each(&:join)

puts counter

p "=============================================="

# with Mutex


counter = 0
lock=Mutex.new

threads = 10.times.map do
    Thread.new do
        lock.synchronize do
            counter +=1
        end
    end
end


threads.each(&:join)

puts counter