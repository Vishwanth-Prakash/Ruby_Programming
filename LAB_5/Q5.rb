Thread.new do 
    thread_var = "Thread variable" 
    fiber=Fiber.new do 
        local_fiber_var = "fiber variable" 
        puts local_fiber_var 
        puts thread_var 
    end 
    fiber.resume 
end.join 