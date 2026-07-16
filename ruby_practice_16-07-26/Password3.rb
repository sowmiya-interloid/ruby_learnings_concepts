password = "ruby123"
attempt = 0

loop do
  print "Enter Password: "
  user_password = gets.chomp

  if user_password == password
    puts "Login Successful"
    break
  else
    attempt += 1
    puts "Wrong Password"

    if attempt == 3
      puts "Maximum attempts reached"
      break
    end
  end
end