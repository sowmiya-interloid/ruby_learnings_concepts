# 1===============================

arr=[4,8,15,16,23,42]

squared_arr=arr.map {|n| n*n}

p squared_arr


# 2================================

words=["Hi","Hello","Bye","GetLost","Happy","Sad","Runaway"]

selected_arr=words.select {|word| word.length>5}

p selected_arr


# 3=================================

arr=[1,2,3,4,5]

product_arr=arr.reduce(1) {|n,pro| pro*n }

p product_arr

# 4===================================

student_mark=[35,68,90,56,78,100]

pass,fail=student_mark.partition { |n| n>=50}

p pass

p fail


#  5===================================

even_odd_arr=(0..10).group_by { |n| n%2==0}

p even_odd_arr

#  6===================================

res_arr=(1..20).select { |n| n%2==0}.map {|n| n*3}

p res_arr

#  7===================================

words=["Hi","Hello","Bye","GetLost","Happy","Sad","Runaway"]

length_hash = words.each_with_object({}) do |word,hash|
    hash[word]=word.length
end

p length_hash

#  8===================================

arr=[1,nil,2,nil,3]

remove_nil=arr.compact

p remove_nil

sum=remove_nil.reduce(0) { |n,sum| sum+n}

p sum