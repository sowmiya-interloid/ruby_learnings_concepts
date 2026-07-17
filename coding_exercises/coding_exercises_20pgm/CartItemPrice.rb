cart = [
    { name: "Book", price: 100, quantity: 2 },
    { name: "Pen", price: 20, quantity: 3 },
    { name: "Bag", price: 500, quantity: 1 }
]

total=0
cart.each do |n|
    p n
    total=total+ (n[:price]*n[:quantity])
end

p total

