def performance(perform,salary)
    if(perform=="high")
        p "Congrats...you get additional bonus 3000"
        p salary+3000

    elsif(perform=="low") 
        p "Sorry..!! You get the same Salary..."
    end
end


p "Please Enter the Salary "
salary=gets.chomp.to_i


if(salary>20000)
    performance("high",salary)

else
    performance("low",salary)
end