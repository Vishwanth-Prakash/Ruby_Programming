t1 = Thread.new { sleep 1; puts "Thread with lower priority" } 
t2 = Thread.new { puts "Thread with higher priority" } 
 
t1.priority = -1   
t2.priority = 1   
 
t1.join 
t2.join

