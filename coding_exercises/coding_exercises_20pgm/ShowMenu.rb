
loop do
puts "Menu Card!!!!!!!!!!!!!"
puts "1. Apple"
puts "2. Banana"
puts "3. Mango"
puts "4. Exit"

print "Enter your choice: "
choice = gets.chomp.to_i

case choice
when 1
    puts "You selected Apple"
when 2
    puts "You selected Banana"
when 3
    puts "You selected Mango"
when 4 
    puts "Exiting..."
    break
else 
    puts "Invalid Choice"
    break
end
end