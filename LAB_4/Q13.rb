def find_files(dir, name_pat: nil, ext: nil, min_size: nil)
  files = Dir.glob("#{dir}/**/*").select { |f| File.file?(f) }
  files.select! { |f| File.basename(f).include?(name_pat) } if name_pat
  files.select! { |f| File.extname(f) == ext } if ext
  files.select! { |f| File.size(f) >= min_size } if min_size
  files
end

dir = '.'
name_pat = 'Vishwa'
ext = '.txt'
min_size = 100

results = find_files(dir, name_pat: name_pat, ext: ext, min_size: min_size)

if results.empty?
  puts "No files found."
else
  puts "Found files:"
  results.each { |f| puts f }
end

