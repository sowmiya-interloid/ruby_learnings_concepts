# Bug 1- Expected [2,4,6]

doubled=[1,2,3].each {|n| n*2}
p doubled

#  sol is map

doubled=[1,2,3].map {|n| n*2}
p doubled

p "==================================================="

# Bug2 -Wants total 15

# total=[1,2,3,4,5].map {|s,n| s+n}

# p total 

# sol is using sum or reduce

total=[1,2,3,4,5].sum {|n| n}

p total

#  ========or ========

total1=[1,2,3,4,5].reduce(0) {|n,sum| sum+n}

p total1

p "==================================================="

# Bug 3 - Filter evens

evens=(1..10).select {|n| n%2}
p evens     #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# sol is 
evens=(1..10).select {|n| n%2==0}
p evens


p "==================================================="

# Bug 4 - Sort by length

names=["priya","meera","kavi","raju","sita"]

sort=names.sort {|a,b| a.length}

p sort


# sol is using sort_by


names=["priya","meera","kavi","raju","sita"]

sort=names.sort_by {|a| a.length}

p sort
