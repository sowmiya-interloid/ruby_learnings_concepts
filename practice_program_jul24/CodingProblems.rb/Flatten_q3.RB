nested_arr=[24,67,89,90,11,13,1, [2, 3], [4, [5]], 6,7,8,8,8,6]

flatten_arr=nested_arr.flatten

p flatten_arr

dedupe_arr=flatten_arr.uniq

p dedupe_arr

sorted_arr=dedupe_arr.sort

p sorted_arr