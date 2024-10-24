fiber = Fiber.new do 
    local_fiber_var = "Fiber variable" 
    Thread.new do 
        thread_var = "Thread variable" 
        puts thread_var 
        puts local_fiber_var 
    end.join 
end 
 
fiber.resume