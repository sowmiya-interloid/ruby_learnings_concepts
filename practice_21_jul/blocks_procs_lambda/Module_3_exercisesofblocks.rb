#  ======================practice questions=============================

# 1.write a method that yields three times

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

p "==============================================================="

# 2.make a method that works with or without a block using block_given

def greet

    if(block_given?)
        yield
    else
        p "sorry !!!! Block not found"
    end
end
greet {puts "hii hello bye"}
greet

p "==============================================================="

# 3. Store a doubling Proc and call it on 3 numbers

double=proc {|a| a*a}

p double.call(10)
p double.call(2)
p double.call(4)


# ========================
example=proc {|a,b| a+b}

p example.call(10,20,30,40)        #Extra arguments are ignored by proc   o/p===>30

p "==============================================================="

# 4. write a lambda that checks if a number is even

even = -> (x) do
    if(x%2==0)
        "#{x} is a even number"
    else
        "#{x} is a odd number"
    end
end

p even.call(3)
p even.call(2)
p even.call(68)

#  ======================predicate the output=============================

p=proc {|a,b| "#{a}-#{b}"}
puts p.call(1)                  # 1-


# l=->(x) {x*2}
# puts l.call(3,4)                #wrong number of arguments




def m
    yield(5)
end

m {|n| puts n*n}                   #25



str=[1,2,3].map(&:to_s)

p str



