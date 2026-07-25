cart = [
    { name: "Book", price: 100 },
    { name: "Pen",  price: 20 },
    { name: "Bag",  price: 500 }
]


cart_items=cart.map {|item| item[:price]}

p cart_items

sum=0

cart_items.each do |i|
    sum=sum+i
end

p sum

if(sum<500)
    p tax=sum * 0.5
elsif(sum>=500 && sum<=1000)
    p tax=sum * 0.10
else
    p tax=sum *0.20
end