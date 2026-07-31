loop do
    begin
    print "Enter first number: "
    num1 = gets.chomp.to_i

    print "Enter operator (+, -, *, /): "
    operator = gets.chomp

    unless ["+", "-", "*", "/"].include?(operator)
        raise ArgumentError
    end

    print "Enter second number: "
    num2 = gets.chomp.to_i

    if operator == "/" && num2 == 0
        raise ZeroDivisionError
    end

    case operator
    when "+"
        result = num1 + num2
    when "-"
        result = num1 - num2
    when "*"
      result = num1 * num2
    when "/"
        result = num1 / num2
    end

    puts "Result: #{result}"


    rescue ArgumentError
        puts "Invalid input! Please enter numbers and a valid operator."


    rescue ZeroDivisionError
        puts "Cannot divide by zero."
    
    ensure
        
        puts "Calculation finished."
    end

print "Try again? (y/n): "
choice = gets.chomp.downcase
break if choice != "y"
end

puts "Thank you!"