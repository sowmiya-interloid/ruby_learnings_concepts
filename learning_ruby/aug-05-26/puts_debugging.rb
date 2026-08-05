def total_price(items)
    sum=0

    items.each do |i|
        puts "Debug : i= #{i.inspect}"

        sum+=i[:price]
    end
    sum
end


items=[
    {name:"laptop",price:30000},
    {name:"mouse",price:200},
    {name:"keyboard",price:900}
]

p total_price(items)