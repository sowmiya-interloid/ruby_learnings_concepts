def celsius_to_fahrenheit(celsius)
    fahrenheit = (celsius * 9 / 5) + 32
end

p "Enter Celsius: "
celsius = gets.chomp.to_f
p celsius_to_fahrenheit(celsius)

