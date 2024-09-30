def merge_and_sort_files(file_paths, output_file)
  all_data = []

  file_paths.each do |file|
    if File.exist?(file)
      all_data.concat(File.readlines(file).map(&:strip))
    else
      puts "File '#{file}' not found!"
    end
  end

  sorted_data = all_data.uniq.sort

  File.open(output_file, 'w') do |f|
    sorted_data.each { |line| f.puts(line) }
  end

  puts "Merged and sorted data written to '#{output_file}'"
end

file_paths = ['file1.txt', 'file2.txt', 'file3.txt']
output_file = 'merged_output.txt'

merge_and_sort_files(file_paths, output_file)

