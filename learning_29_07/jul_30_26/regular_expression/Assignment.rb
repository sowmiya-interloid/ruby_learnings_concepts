email = "john@gmail.com"
phone = "9876543210"
pin = "123456"
password = "Ruby@123"

# Email Validation

if email.match?(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)
    puts "Email: VALID"
else
    puts "Email: INVALID"
end

# Phone Number Validation

if phone.match?(/^[6-9]\d{9}$/)
    puts "Phone: VALID"
else
    puts "Phone: INVALID"
end

# PIN Code Validation

if pin.match?(/^\d{6}$/)
    puts "PIN: VALID"
else
    puts "PIN: INVALID"
end

# Password Validation

if password.match?(/^(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&*!])[A-Za-z\d@#$%^&*!]{8,}$/)
    puts "Password: VALID"
else
    puts "Password: INVALID"
end