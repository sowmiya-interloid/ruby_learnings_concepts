def greet
    yield
    yield
    yield
end
greet {puts "hello"}


def three_times_print
    yield(1)
    yield(5)
    yield(6)
end

three_times_print do |i|
    puts "#{i} - Iteration"
end



str=[1,2,3].map(&:to_s)

p str