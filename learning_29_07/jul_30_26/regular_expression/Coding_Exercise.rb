# 1............................

pin = "123456"

if pin.match?(/^\d{6}$/)
    puts "Valid PIN"
else
    puts "Invalid PIN"
end


# 2............................

tweet = "Learning #Ruby and #Regex is #awesome!"

hashtags = tweet.scan(/#\w+/)

p hashtags

# 3............................

word = "Education"

result = word.gsub(/[aeiouAEIOU]/, "*")

puts result

# 4............................

password = "Ruby1234"

if password.match?(/^(?=.*[A-Z])(?=.*\d).{8,}$/)
    puts "Valid Password"
else
    puts "Invalid Password"
end

# 5............................

receipt = "Milk $3.50, Bread $2.25, Eggs $6.99, Rice $25.00"

prices = receipt.scan(/\$\d+\.\d{2}/)

p prices