def two_sum(nums, target)
  res = []
  i=0
  while(i < nums.length)
    j = i + 1
    while ( j < nums.length)
      if (nums[i] + nums[j] == target)
        res.push(i,j)
      end
      j += 1
    end
    i +=1
  end
  res
end


nums = [2,3,4,5 ]
target = 9

p two_sum(nums, target)




