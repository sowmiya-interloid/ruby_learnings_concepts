discount = ->(amount) do

    if(amount<1000)
        amount * 5/100
    elsif(amount>=1000 && amount<=5000)
        amount * 10/100
    else
        amount * 20/100
    end
end

amounts=[900,567,1234,5678]

amounts.each do |a|
    discount_price=discount.call(a)
    p discount_price
end

