t = Thread.new do
  sleep 2
  70
end
puts "Thread returned value: #{t.value}"