p "Please Enter the Number"

num=gets.chomp.to_i

(1..20).each do |i|
    puts " #{i} * #{num} = #{i*num}"
end



