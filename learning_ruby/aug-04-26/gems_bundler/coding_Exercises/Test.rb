require "colorize"

puts "Hello Ruby".green
puts "Hello Ruby".red
puts "Hello Ruby".blue
puts "Hello Ruby".yellow
puts "Hello Ruby".magenta
puts "Hello Ruby".cyan
puts "Hello Ruby".light_green
puts "Hello Ruby".light_black

p "=================================================="

require "pry"

a="Hiii"
b="Hello"
c="Byeee"

binding.pry

puts "#{a} #{b} #{c}"

p "=================================================="

require "faker"

puts Faker::Name.name


p "=================================================="



