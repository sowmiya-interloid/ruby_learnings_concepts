p "PLease Enter the 4 digit pin"

pin=gets.chomp.to_i
pin_real=4444

if(pin==pin_real)
    p "valid pin access granted"
else
    p "Try Again!!!!!!!!!!!!!!!!!!!!!!!!"
end