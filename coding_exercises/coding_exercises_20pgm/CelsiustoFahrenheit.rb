def CelsiustoFahrenheit(celsius)
    (celsius * 9.0 / 5) + 32
end

celsius=gets.chomp.to_f
p CelsiustoFahrenheit(celsius)
