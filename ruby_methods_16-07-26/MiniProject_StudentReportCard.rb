def totalcount(tamil,english,maths,science,socialscience)

    tamil+english+maths+science+socialscience
end



def studentgrade(average)
    if(average>=90 && average<=100)
        dispaly("A+")
    elsif(average>=80 && average<=90)
        dispaly("A")
    elsif(average>=70 && average<=80)
        dispaly("B+")
    elsif(average>=60 && average<=70)
        dispaly("B")
    elsif(average>=50 && average<=60)
        dispaly("C")
    else 
        p "You're Fail,Try Next Time......!!!!!!!!!"
end
end


def dispaly(grade)
    if(grade=="A+")
        P "OUTSTANDING you cleared the Exam!!!!!!!!!!!!!"
    elsif(grade=="A")
        p "EXCELLENT you cleared the Exam!!!!!!!!!!!!!!!"
    elsif(grade=="B+")
        p "Very good you cleared the Exam!!!!!!!!!!!!!!!"
    elsif(grade=="B")
        p "Good you cleared the Exam!!!!!!!!!!!!!!!!!!!!"
    elsif(grade=="C")
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
p average

studentgrade(average)