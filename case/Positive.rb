p "Please enter the no"

num=gets.chomp.to_i

# if(num>0)
#     p "POsitive"
# elsif(num==0)
#     p "Zero"
# else
#     p "Negative"
# end

# if (num>0) then p "POsitive"
# elsif(num==0) then  p "Zero"
# else
#  p "Negative"
# end


case
when num>0
    p "POsitive"
when num==0
    p "Zero"
else
    p "Negative"
end
