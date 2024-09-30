def split_file(file_path, lines_per_file)
  file_number = 1

  File.open(file_path, "r") do |file|
    while !file.eof?
      File.open("split_file_part_#{file_number}.txt", "w") do |f|
        lines_per_file.times do
          line = file.gets
          break if line.nil?
          f.puts(line)
        end
      end
      file_number += 1
    end
  end
  puts "File split successfully into #{file_number - 1} parts."
end

def join_files(output_file, total_parts)
  File.open(output_file, "w") do |output|
    (1..total_parts).each do |i|
      File.open("split_file_part_#{i}.txt", "r") do |f|
        output.puts(f.read)
      end
    end
  end
  puts "Files joined successfully into #{output_file}."
end

split_file("Vishwa_File/Vishwa.txt", 6)
join_files("Vishwa_File/Output.txt", 2)

