

items=["APPLE","MANGO" ]

p "Please Enter the Menu 1.ADD 2.VIEW 3.EXIT"

menu=gets.chomp.to_i



case menu
when 1
    p "Please Enter the value: "
    val=gets.chomp
    items.push(val)
    items.each do |i|
        puts i
    end

when 2
    p "PRODUCT VIEW "
    items.each do |i|
        puts i
    end
    
when 3
    p "Exit...."
   
end
