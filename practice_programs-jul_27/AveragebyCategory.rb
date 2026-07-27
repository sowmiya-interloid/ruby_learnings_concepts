products = [
    { name: "Laptop",category: "Electronics", price: 5 },
    { name: "Mouse",category: "Electronics", price: 7 },
    { name: "Shoes", category: "Fashion",     price: 5 },
    { name: "Milk", category: "Groceries",   price: 5 },
    { name: "Book", category: "Education",   price: 5 }
]
sum=0
products.each do |val|
    sum+=val[:price]
end

sum_price= sum

c=0
products.each do |val|
    c+=1
end

sumofproduct=c

avg=sum_price.to_f/sumofproduct

p avg



