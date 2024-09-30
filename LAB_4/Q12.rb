require 'fileutils'

def rename_file(old_name, new_name)
  if File.exist?(old_name)
    FileUtils.mv(old_name, new_name)
    puts "Renamed '#{old_name}' to '#{new_name}'"
  else
    puts "File '#{old_name}' not found!"
  end
end

def copy_file(src, dest, new_name = nil)
  if File.exist?(src)
    copy_name = new_name || File.basename(src)
    FileUtils.cp(src, File.join(dest, copy_name))
    puts "Copied '#{src}' to '#{File.join(dest, copy_name)}'"
  else
    puts "File '#{src}' not found!"
  end
end

old_file_name = 'Vishwa_File/Vishwa.txt'
new_file_name = 'Vishwa_File/Vishwa_new.txt' 
destination = 'copies'            

FileUtils.mkdir_p(destination)

rename_file(old_file_name, new_file_name)
copy_file(new_file_name, destination)
