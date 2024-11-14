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
    client.puts "Enter your name:"
    name = client.gets.chomp
    client.puts "Enter your age:"
    age = client.gets.chomp.to_i

    result = VIT_register_student(name, age)

    client.puts result

    client.close
    puts "Client disconnected."
  end
end
