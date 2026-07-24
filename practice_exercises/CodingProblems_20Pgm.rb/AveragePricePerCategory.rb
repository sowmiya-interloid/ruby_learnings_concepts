products = [
    { name: "Apple", category: "Fruit", price: 100 },
    { name: "Banana", category: "Fruit", price: 50 },
    { name: "Carrot", category: "Vegetable", price: 40 },
    { name: "Potato", category: "Vegetable", price: 60 },
    { name: "Milk", category: "Dairy", price: 80 }
]


by_category=products.group_by {|pro| pro[:category]}

puts by_category

result = {}

by_category.each do |category, items|
    total = 0
    items.each do |item|
        total += item[:price]
    end
    result[category] = total / items.length
end

p result