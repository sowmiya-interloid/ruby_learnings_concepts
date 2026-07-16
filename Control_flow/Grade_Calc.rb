p "Welcome to Grade Calculator"

p "Please Enter the your Mark...."

mark=gets.chomp.to_i


if(mark>=90)
    p "Excellent....Congrats"
    p "You're grade is "
    p "A+"
elsif(mark>=80 && mark<90)
    p "Very Good....Congrats"
    p "You're grade is "
    p "A"
elsif(mark>=70 && mark<80)
    p "Good....Congrats"
    p "You're grade is "
    p "B+"
elsif(mark>=60 && mark<70)
    p "Congrats"
    p "You're grade is "
    p "B"
elsif(mark>=50 && mark<60)
    p "JUST PASS!!!!!!!"
    p "You're grade is "
    p "C"
else
    p "Sorry....... Better Luck for Next time"
end



