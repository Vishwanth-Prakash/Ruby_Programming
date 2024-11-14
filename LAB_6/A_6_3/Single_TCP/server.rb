require 'socket'
require 'thread'

def VIT_register_student(name, age)
  if age < 18
    return "Registration failed: Age must be 18 or older."
  else
    return "#{name} registered successfully!"
  end
end

server = TCPServer.new('localhost', 2000)
puts "Server is waiting for connections..."

loop do
  client = server.accept
  Thread.new(client) do |client|
    puts "Client connected!"

    client.puts "Enter your name:"
    name = client.gets.chomp
    puts "Received name: #{name}"

    client.puts "Enter your age:"
    age = client.gets.chomp.to_i
    puts "Received age: #{age}"

    result = VIT_register_student(name, age)

    client.puts result
    puts "Sent result to client: #{result}"

    client.close
    puts "Client disconnected."
  end
end
