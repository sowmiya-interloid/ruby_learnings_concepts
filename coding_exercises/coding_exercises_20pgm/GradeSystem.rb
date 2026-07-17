def totalcount(tamil,english,maths,science,socialscience)

    tamil+english+maths+science+socialscience
end



def studentgrade(average)
    if(average>=90 && average<=100)
        display("A+")
    elsif(average>=80 && average<=90)
        display("A")
    elsif(average>=70 && average<=80)
        display("B+")
    elsif(average>=60 && average<=70)
        display("B")
    elsif(average>=50 && average<=60)
        display("C")
    else 
        p "You're Fail,Try Next Time......!!!!!!!!!"
end
end


def display(grade)
    if(grade=="A+")
        p "you're grade is #{grade}"
        P "OUTSTANDING you cleared the Exam!!!!!!!!!!!!!"
    elsif(grade=="A")
        p "you're grade is #{grade}"
        p "EXCELLENT you cleared the Exam!!!!!!!!!!!!!!!"
    elsif(grade=="B+")
        p "you're grade is #{grade}"
        p "Very good you cleared the Exam!!!!!!!!!!!!!!!"
    elsif(grade=="B")
        p "you're grade is #{grade}"
        p "Good you cleared the Exam!!!!!!!!!!!!!!!!!!!!"
    elsif(grade=="C")
        p "you're grade is #{grade}"
        p "you cleared the Exam!!!!!!!!!!!!!!!!!!!!"
    end
end
    


tamil=gets.chomp.to_i
english=gets.chomp.to_i
maths=gets.chomp.to_i
science=gets.chomp.to_i
socialscience=gets.chomp.to_i

totalsubject_count=5
total_mark=totalcount(tamil,english,maths,science,socialscience)

average=total_mark/totalsubject_count
p "You're Avg mark is #{average}"

studentgrade(average)