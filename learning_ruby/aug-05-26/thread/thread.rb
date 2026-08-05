t = Thread.new do
  sleep 3
  puts "Done"
end

t.join

puts "Program Finished"
