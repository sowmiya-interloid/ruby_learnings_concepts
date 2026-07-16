p "Please Enter the temparatue:"

temparature=gets.chomp.to_i

if(temparature>30)
    p "Hot"

elsif(temparature>=15 && temparature<=30)
    p "PLeasure"

elsif(temparature<15)
    p "Cool"

end