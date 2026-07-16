p "Please Enter the Grade..."

col=gets.chomp

case col
when "A+","A"
    p "EXCELLENT....."
when "B+","B"
    p "good....."
when "C"
    p "jUST PASS"
else
    p "Try next time......"
end
