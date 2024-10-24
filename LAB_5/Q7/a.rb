t = Thread.new do 
    puts "Thread running, then stopping" 
    Thread.stop 
    puts "Thread resumed" 
  end 
  sleep 1 
  puts "Main thread waking up the stopped thread" 
  t.run 
  t.join 