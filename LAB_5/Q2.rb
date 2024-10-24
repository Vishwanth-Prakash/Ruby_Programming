require 'thread' 
threads = [] 
10.times do |i| 
    threads << Thread.new do 
        sleep_time = rand(1..5) 
        sleep(sleep_time) 
        puts "Thread #{i+1} woke up later #{sleep_time} seconds." 
    end 
end 
threads.each(&:join) 