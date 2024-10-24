t = Thread.new do 
    puts "Thread sleeping" 
    Thread.stop 
    puts "Thread woke up" 
  end 
   
  sleep 1 
  puts "Main thread waking up the stopped thread" 
  t.wakeup 
  t.join