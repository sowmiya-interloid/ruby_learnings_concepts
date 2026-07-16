students=["Ram","Kavi","Sita","Priya","Meera","Keerthi","Yamuna","Kaveri","Ganga"]

loop do
p "Please enter 1.for Adding Students=>>> 2.for View the Students=>>> 3 .or Removing items ....==>>>closing the record use choice 4"
choice=gets.chomp.to_i

if(choice==1) 
    p "Please add the items....!!!!!!! "

    name=gets.chomp
    
    students.push(name)

elsif(choice==2)
    p "Here you view all the Students!!!!!!!!!"

    students.each do |name|
        p name
    end
elsif(choice==3)
    p "Here you Remove the Student!!!!!!!!!"
    delete_name=gets.chomp
    students.delete(delete_name)
elsif(choice==4)
    break
    
end
end