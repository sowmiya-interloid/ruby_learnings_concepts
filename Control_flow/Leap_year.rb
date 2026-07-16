p "Please Enter the year: "

year=gets.chomp.to_i

if(year%400==0)
    p "It is leap year"
elsif(year%100==0)
    p "It is not a leap year"
elsif(year%4==0)
    p "It is leap year"
else
    p "Not a leap year"
end