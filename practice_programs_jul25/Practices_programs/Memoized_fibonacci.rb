def fib(num,memo={})
    return num if(num<=1)

    memo[num]=fib(num-1,memo)+fib(num-2,memo)

end

p fib(10)