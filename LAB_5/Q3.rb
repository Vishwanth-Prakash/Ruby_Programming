Main_var = "Main thread variable" 
Fiber_var = "Fiber variable" 
Thread_var = "Thread variable"  
fiber = Fiber.new do 
    puts " inside fiber : #{Fiber_var}" 
end 
thread = Thread.new do 
    puts " inside thread :  #{Thread_var}" 
end 
puts " in main thread : #{Main_var}" 
fiber.resume 
thread.join