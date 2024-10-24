fiber1 = Fiber.new do
  puts "Fiber1 is running"
  Fiber.yield
  puts "Fiber1 is resumed"
end

fiber1.resume
puts "back to Main"
fiber1.resume

fiber2 = Fiber.new do
  puts "Fiber2 is running"
end

fiber3 = Fiber.new do
  puts "Fiber3 is running"
  fiber2.transfer
end

fiber3.resume

fiber4 = Fiber.new do
  begin
    Fiber.yield
  rescue => e
    puts "Caught an exception: #{e.message}"
  end
end

fiber4.resume
fiber4.raise "An error occurred in Fiber4"
