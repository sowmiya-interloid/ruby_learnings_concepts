fiber = Fiber.new do
  puts "Line 1"

  Fiber.yield

  puts "Line 2"
end

fiber.resume

fiber.resume