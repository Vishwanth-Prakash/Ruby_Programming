file_path = "Vishwa_File/Vishwa_1.txt"
File.open(file_path, 'w') do |file|
  file.puts "Hello Vishwa!"
end
puts "File created..."

puts "Files in 'Vishwa_File' directory:"
puts Dir.entries("Vishwa_File").select { |f| !f.start_with?('.') }

