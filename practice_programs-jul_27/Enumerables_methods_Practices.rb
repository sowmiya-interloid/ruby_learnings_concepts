nums=[1,2,3,4,5]

# each loop

nums.each do |n|
    p n
end

p "============================================="


#map


res=nums.map do |n|
    n*n
end

p res

p "============================================="


p nums.map {|n| n*n}

p "============================================="

# select


res=nums.select do |n|
    n.even?
end

p res

p nums.select {|n| n>4}

p nums.select {|n| !n.nil?}

p "============================================="

#reject

res=nums.reject do |n|
    n>3
end

p res

p nums.reject {|n| n.nil?}

p "============================================="

#find


first_element=nums.find {|n| n<3}
p first_element

first_element=nums.find {|n| n.even?}
p first_element


p "============================================="

#filter_map

res=nums.filter_map do |n|
    n*n if(n.even?)
end

p res


res=nums.select {|n| n>3}
        .map {|n| n*2}

p res

p "============================================="

#reduce/inject

res=nums.reduce(0) do |sum,n|
    sum+n
end

p res


res=nums.reduce(:+)
p res

p "============================================="

# sum

p nums.sum

length=["Ruby","Rails"].sum {|s| s.length}

p length

p "============================================="

# count,any?,all?,none?,one?

ages=[23,22,16,45,13,20,34,57]


p ages.count {|n| n>19}

p ages.any? {|n| n>30}

p ages.all? {|n| n>13}
p ages.all? {|n| n>10}

p ages.none? {|n| n>70}

p ages.one? {|n| n>50}

p "============================================="

# sort//sort_by


nums=[34,6,7,90,56,1]

p nums.sort

p nums.sort {|a,b| b <=> a}

arr=["ruby","rails","python","css"]

p arr.sort_by {|n| n.length}

p "============================================="

# group_by

subjects=[
    {marks: 90, sub: "ruby"},
    {marks: 97, sub: "ruby"},
    {marks: 80, sub: "java"},
    {marks: 90, sub: "java"},
    {marks: 96, sub: "python"}
]

res=subjects.group_by {|n| n[:sub]}
p res

p "============================================="

# partition

nums=[1,2,3,4,5,6,7,8,9,10]

even,odd=nums.partition do |check|
    check%2==0
end

p even
p odd

p "============================================="

# each_with_index

arr=["java","ruby","rails","python"]

arr.each_with_index do |n,index|
    p "#{n}  #{index}"
end

p "============================================="

# each_with_object

arr=["java","ruby","rails","python"]

res = arr.each_with_object({}) do |item,hash|
    hash[item]=item.length
end

p res


p "============================================="

# flat_map,flatten

arr=[[1,2,3,[9,8,70]],[4,5],7]

res=arr.flat_map {|n| n}

p res


res=arr.flatten

p res

res=arr.flatten(1)

p res

p "============================================="

# uniq

arr=[1,1,1,1,2,2,2,3,4,5,6,7,7,7,7,8]

p arr.uniq


arr=["Hi","hi","Ruby","ruby","python"]

p arr.uniq {|word| word.downcase}

p "============================================="

# compact

arr=[1,nil,2,nil,3,nil,6,7,8]

p arr.compact

p "============================================="

marks=[45,67,89,90,67,88]

p marks.sort_by {|n| -n}
p marks.sort_by {|n| n}

p marks.sort_by {|n| -n}.first(3)


p "============================================="

cart=[
    {item: "Pen",qty: 3,price:90},

    {item: "book",qty: 4,price:230}
]

lines=cart.map {|i| i[:qty] * i[:price]}

p lines

p lines.sum


p "============================================="

num=[1,2,3,4,5]

p num.reduce(:*)


res=num.reduce(1) do |pro,n|
    p pro 
    p n
    pro*n
end

p res
p "============================================="

p (0..10).group_by {|n| n.even?}


res=(0..10).group_by do |n|

    n.even? ? :even : :odd
end

p res

p "============================================="

sub=["Ruby","Python","Java"]

res=sub.each_with_object({}) do |word,hash|
    hash[word]=word.size
end

p res

p "============================================="

arr=[1,nil,2,nil,3]

p arr.compact.sum


