t1 = Thread.new { puts "Thread 1 executing" } 
t2 = Thread.new { puts "Thread 2 executing" } 
 
Thread.pass
t1.join 
t2.join