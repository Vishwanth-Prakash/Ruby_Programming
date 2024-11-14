require 'socket'

client = TCPSocket.new('localhost', 2000)

puts client.gets.chomp
client.puts "Vishwa"
puts client.gets.chomp
client.puts 20

puts client.gets.chomp

client.close
