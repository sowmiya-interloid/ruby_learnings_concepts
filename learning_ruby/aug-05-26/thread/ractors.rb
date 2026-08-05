r1 = Ractor.new do
  puts "Hello from Ractor 1"
end

r2 = Ractor.new do
  puts "Hello from Ractor 2"
end

p r1
p r2