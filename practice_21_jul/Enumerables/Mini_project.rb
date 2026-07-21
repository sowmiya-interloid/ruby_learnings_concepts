# Bulid a student Report Analyzer

student_list=[
    {name:"priya", mark:98 ,rank:"A"},
    {name:"meera", mark:87 ,rank:"B"},
    {name:"raju", mark:75 ,rank:"C"},
    {name:"ram", mark:63 ,rank:"C"},
    {name:"keerthi", mark:45 ,rank:"D"},
    {name:"nila", mark:58 ,rank:"C"},
    {name:"suriya", mark:37 ,rank:"D"},
    {name:"arun", mark:88 ,rank:"B"},
    {name:"deva", mark:96 ,rank:"A"},
    {name:"pooja", mark:100 ,rank:"A"}
]

puts "STUDENTS REPORTS"

new_arr=student_list.map do |student|

    puts "Name : #{student[:name]} | Mark : #{student[:mark]} | Grade : #{student[:rank]}"
end



p "======================================================="

p "CLASS AVERAGE"

sum=student_list.sum {|marks| marks[:mark]}

len=student_list.length

average=sum/len

p "Class average is #{average}"

p "======================================================="

p "TOP 3 STUDENTS"

toppers = student_list.sort_by {|val| val[:mark]}.reverse.first(3)

puts "Class 3 Toppers are:  "
puts toppers


p "======================================================="

p "PASS/FAIL COUNTS"

pass,fail=student_list.partition { |n| n[:mark]>=50}

passed_count=pass.length
failed_count=fail.length


puts "PASSED STUDENTS ARE  :   "
puts pass

puts "Passed Counts are : #{passed_count}"

p "======================================================="

puts "FAILED STUDENTS ARE  :   "
puts fail
puts "Failed Counts are : #{failed_count}"

p "======================================================="

p "GROUPED BY GRADE (A/B/C/D)"

by_grp = student_list.group_by {|s| s[:rank]}

puts by_grp

p "======================================================="

p "Sort by based on rank"

sort_list=student_list.sort_by {|val| val[:mark]}.reverse

puts sort_list
