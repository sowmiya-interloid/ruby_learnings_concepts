t = Thread.new do
  
  puts "Finished"
end

puts "Waiting..."

t.join

puts "Done"