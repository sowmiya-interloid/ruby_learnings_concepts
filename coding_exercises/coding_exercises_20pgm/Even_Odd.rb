def even_odd(num)
    if(num%2==0)
        "#{num} is Even number"
    else
        "#{num} is Odd number"
    end
end

num=gets.chomp.to_i

p even_odd(num)