def studentmark(mark)
    if(mark>=90 && mark<=100)
        p "Pass With A+ grade"
    elsif(mark>=80 && mark<=90)
        p "Pass with A grade"
    elsif(mark>=70 && mark<=80)
        p "Pass with B+ grade"
    elsif(mark>=60 && mark<=70)
        p "Pass with B grade"
    elsif(mark>=50 && mark<=60)
        p "Pass with C grade"
    else 
        p "You're Fail,Try Next Time......!!!!!!!!!"
end
end


mark=gets.chomp.to_i
studentmark(mark)