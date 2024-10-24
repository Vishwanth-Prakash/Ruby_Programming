mutex = Mutex.new 
counter = 0 
 
5.times do |i| 
  Thread.new do 
    mutex.synchronize do 
      counter += 1 
      puts "Thread #{i + 1} increased counter to #{counter}" 
    end 
  end 
end 
 
Thread.list.each { |t| t.join unless t == Thread.main }