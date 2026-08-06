fiber=Fiber.new do 
    puts "start 1"

    Fiber.yield


    puts "start 2"

    Fiber.yield

    puts "start 3"

    Fiber.yield
end

fiber.resume
fiber.resume
fiber.resume