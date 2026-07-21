nums=[1,2,3,4,5,0]


usingmap =nums.map {|n| n*2}
p nums

p usingmap

usingselect=nums.select {|n| n>3}
p usingselect


usingreduce=nums.reduce(:*)

p usingreduce

usingreduce=nums.reduce(:+)

p usingreduce


max=nums.max

p max

sort=nums.sort
p sort

arr = [1, 2, 3]

result = arr.each do |num|
  p num * 10
end

p result

# map/collect
# select/filter
# find/detect


# filter_map======>select+map

num=[1,2,3,4,5,6,7,8,9,11,12]

new_arr=num.filter_map do |n|
    n*2 if(n%2==0)
end

p new_arr


# without using filter_map

nums=[2,3,4,5,6,7,8]

new_arr=[]

nums.each do |n|

  if(n%2==0)
    num=n*2
    new_arr << num
  end
end

p new_arr

# sum==================

num=[2,3,4,5,6]

total=num.sum

p total



tot=["cat","dog","sowmi"].sum{|n| n.length}

p tot


# ==============================================


nums=[1,2,3,4,5,6,78]

c=nums.count {|n| n>5}

p c

c1=nums.any? {|n| n=5}

p c1


c2=nums.all? {|n| n==0}

p c2

c3=nums.none?{|num| num>100}

p c3


c4=nums.one?{|num| num==78}

p c4


marks=[12,34,56,78,89,90]


sortex=marks.sort


des=marks.sort{ |a,b| b<=>a}

p des


stu=["Aisha","Arunaa","Sowmiya","Alia","hi"]

word_asc=stu.sort_by {|n| n.length}

p word_asc

# Student Mark analysis

students = [
    { name: "Ram",   mark: 85 },
    { name: "John",  mark: 45 },
    { name: "Abi",   mark: 92 },
    { name: "Kavi",  mark: 68 },
    { name: "Priya", mark: 78 }
]

sum1=students.sum {|marks| marks[:mark]}

len=students.length

average=sum1/len

print "The average mark is: "
print average
puts "================================================================="


sorted=students.sort_by {|mark| mark[:mark]}
p sorted

highest=sorted.last
p highest
