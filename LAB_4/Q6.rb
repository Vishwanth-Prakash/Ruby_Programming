puts "Reading from file:"
File.open("Vishwa_File/Vishwa_1.txt", 'r') do |file|
  file.each_line do |line|
    puts line
  end
end
