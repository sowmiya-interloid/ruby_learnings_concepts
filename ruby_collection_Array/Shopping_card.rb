shopping_cart=["Apple","orange","Milk"]

loop do
p "Please enter 1 for Adding items,2 for View the product and 3 for Removing items .....To closing use choice 4"
choice=gets.chomp.to_i

if(choice==1) 
    p "Please add the items....!!!!!!! "

    items=gets.chomp
    
    shopping_cart.push(items)

elsif(choice==2)
    p "Here you view all the products!!!!!!!!!"

    shopping_cart.each do |product|
        p product
    end
elsif(choice==3)
    p "Here you Remove the products!!!!!!!!!"
    delete_item=gets.chomp
    shopping_cart.delete(delete_item)
elsif(choice==4)
    break
    
end
end




