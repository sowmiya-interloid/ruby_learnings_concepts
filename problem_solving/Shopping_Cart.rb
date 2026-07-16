shopping_item={
  phone:20000,
  bag:567,
  mouse:4000,
  laptop:50000,
  bottle:90,
  note:50,
  pen:5
}

bill=0
shopping_item.each do |key,value|
    p "#{key} : #{value}"
    bill=bill+value

end

p "Your total Bill is #{bill}"