shared_var = 0 
mutex = Mutex.new 
5.times do |i| 
  Thread.new do 
    mutex.synchronize do 
      shared_var += 1 
      puts "Thread #{i + 1} increased shared_var to #{shared_var}" 
    end 
  end 
end 
Thread.list.each { |t| t.join unless t == Thread.main }