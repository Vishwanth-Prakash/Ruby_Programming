puts "Files in 'Vishwa_File' directory:"
puts Dir.entries("Vishwa_File").select { |f| !f.start_with?('.') }
