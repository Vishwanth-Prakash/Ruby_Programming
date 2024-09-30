file_path = "Vishwa_File/Vishwa_1.txt"
File.open(file_path, 'w') do |file|
  file.puts "Hello Vishwa!"
end
puts "File created..."
File.rename("Vishwa_File/Vishwa_1.txt", "Vishwa_File/Fire.txt")
puts "File Renamed..."

