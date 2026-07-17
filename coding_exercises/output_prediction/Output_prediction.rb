puts 5>3     #true

puts "hi" if false  #nothing

x=10;puts x.even?   #true

puts [1,2,3].length  #3

puts (1..5).to_a.last  #5

puts 3.times { print "*" } #***3

puts "Ruby"[0]   #R

puts 7%2         #1

a=[1,2]; a<<3;puts a.size    #3

puts ({a:1,b:2}).keys.length  #2

puts 2**3 #8

puts "abc".upcase #ABC

n=0; n+=1 until n==3; puts n #3

puts 10.between?(1,5) #false

puts "5".to_i+2 #7

puts [1,2,3].include?(4) #false

puts (1..4).to_a.length #4

puts "a,b,c".split(",").size #3

puts nil.to_s == "" #true