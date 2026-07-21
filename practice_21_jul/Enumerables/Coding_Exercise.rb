
# Word Frequency

sentence="The cat chased the cat cat"

down_case=sentence.downcase

sentence_new=down_case.split(" ")

p sentence_new

length_hash = sentence_new.each_with_object({}) do |word,hash|
    if(hash[word])
        hash[word]+=1
    else
        hash[word]=1
    end

end

p length_hash

p "================================================================================"

# Top 3 Scorers
students = [{ name: "Ram",   score: 85 },
    { name: "John",  score: 45 },
    { name: "Abi",   score: 92 },
    { name: "Kavi",  score: 68 },
    { name: "Priya", score: 78 },
    { name: "Raja",  score: 95 }]

toppers = students.sort_by {|val| val[:score]}.reverse.first(3)
p toppers

p "================================================================================"

# Flatten & Dedupe

arr=[[1,2],[2,3],[3,4]]

new_arr=arr.flatten.uniq

p new_arr

p "================================================================================"

# Average by Category

products = [
    { name: "Laptop",category: "Electronics", price: 5000 },
    { name: "Mouse",category: "Electronics", price: 700 },
    { name: "Shoes", category: "Fashion",     price: 500 },
    { name: "Milk", category: "Groceries",   price: 55 },
    { name: "Book", category: "Education",   price: 50 }
]

sum=products.sum {|p| p[:price]}

len=products.size

avg=sum/len

p avg

