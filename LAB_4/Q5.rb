File.open("Vishwa_File/Vishwa_1.txt", 'r+') do |file|
  file.seek(0, IO::SEEK_END) 
  file.puts "Hello Vishwa"
  
  puts "Current position: #{file.pos}" 
  puts "Current line number: #{file.lineno}" 
  puts "End of file?: #{file.eof?}"
  puts "File size: #{file.size} bytes"
end
