num=gets.chomp.to_i

if(num%3==0 && num%5==0)
    p "#{num} is FizzBuzz"
elsif(num%5==0)
    p "#{num} is Buzz"
elsif(num%3==0)
    p "#{num} is Fizz"
else
    p "None of these"
end