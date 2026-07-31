# 1.Check whether a string contains at least one digit.

# Example:

# "Ruby123"  => true
# "Ruby"     => false


str="Ruby123"

p str.match?(/\d/)

str="Ruby"

p str.match?(/\d/)

p "========================================================================================"

# 2. Check whether a string contains only alphabets.

# "Ruby"

# Valid

# "Ruby123"

# Invalid


str="Ruby"

p str.match?(/\A[a-zA-Z]+\z/)

str="Ruby1234"

p str.match?(/\A[a-zA-Z]+\z/)

p "========================================================================================"

# 3 .Check whether a string starts with "Hello"

str="Hello"

p str.match?(/\AHello/)

p str.match?(/^Hello/)

p "========================================================================================"

# 4. Check whether a string ends with ".rb".

str="Text.rb"

p str.match?(/.rb$/)

p str.match?(/.rb\z/)

p "========================================================================================"

# 5.

# Count how many vowels are present in a string.

# Example

# Programming

# Output

# 3

str="Programming"

p str.scan(/[aeiou]/).length

p "========================================================================================"

# 6.

# Replace all spaces with underscores.

# Example

# Hello Ruby World

# Output

# Hello_Ruby_World

str="Hello Ruby World"

puts str.gsub(" ","_")

p "========================================================================================"

# 7.

# Extract all numbers from a string.

# Example

# Age:25 Roll:100 Salary:50000

# Output

# ["25", "100", "50000"]

str="Age:25 Roll:100 Salary:50000"

p str.scan(/\d+/)

p "========================================================================================"

# 8.

# Remove all digits from a string.

# Example

# Ruby123Rails456

# Output

# RubyRails

str="Ruby123Rails456"

puts str.gsub(/\d+/,"")

p "========================================================================================"

# 9.

# Validate a PIN.

# Exactly 4 digits

# Examples

# 1234

# Valid

# 12345

# Invalid


input="1234"

if(input.match?(/\A\d{4}\z/))
    puts "Valid"
else
    puts "Invalid"
end

p "========================================================================================"

# 10.

# Validate a mobile number.

# Conditions

# Exactly 10 digits

phno="1234567890"

if(phno.match?(/\A\d{10}\z/))
    puts "Valid"
else
    puts "Invalid"
end
p "========================================================================================"

# 11.

# Validate a password.

# Conditions

# Minimum 8 characters
# One uppercase
# One lowercase
# One digit
# One special character


password="Intern@2026"

if password.match?(/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@!$%^&*]).{8,}$/)
    puts "Password Valid"
else
    puts "Password Invalid!!!"
end

p "========================================================================================"

# 12.

# Validate an email address.

# Examples

# user@gmail.com

# Valid

# user@gmail

# Invalid

email="user@gmail.com"

if email.match?(/^[a-zA-Z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,}$/)
    puts "Valid Email"
else
    puts "Invalid Email"
end

p "========================================================================================"

# 13.

# Validate a username.

# Conditions

# Starts with a letter
# Only letters, digits, underscore
# Length 5–15


user="Sowmiya_123"

if user.match?(/\A[A-Za-z][A-Za-z0-9_]{5,15}\z/)
    puts "Valid username"
else
    puts "Invalid username"
end
p "========================================================================================"

# 14.

# Validate a ZIP code.

# Conditions

# Exactly 6 digits


zipcode="657890"

if zipcode.match?(/\A\d{6}\z/)
    puts "Valid ZIP code"
else
    puts "Invalid ZIP code"
end

p "========================================================================================"

# 15.

# Validate a hexadecimal color.

# Examples

# #FFAA00

# Valid

# #12FG00

# Invalid

color = "#FFAA00"

if color.match?(/\A#[A-Za-z0-9]{6}\z/)
    puts "Valid"
else
    puts "Invalid"
end

p "========================================================================================"

# 16.

# Extract all hashtags.

# Example

# Learning #Ruby #Rails #Programming

# Output

# ["#Ruby", "#Rails", "#Programming"]

str="Learning #Ruby #Rails #Programming"

p str.scan(/#[A-Za-z]+/)