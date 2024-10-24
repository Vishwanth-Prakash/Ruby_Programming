t = Thread.fork do 
    puts "Thread created using fork" 
  end 
  t.join