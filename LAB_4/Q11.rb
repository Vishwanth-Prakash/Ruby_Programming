require 'fileutils'
require 'date'

def backup(src, backup_dir)
  ts = DateTime.now.strftime('%Y%m%d_%H%M%S')
  bk_path = File.join(backup_dir, "#{File.basename(src)}_#{ts}")

  FileUtils.cp_r(src, bk_path)
  puts "Backup created at: #{bk_path}"
end

def restore(bk_path, restore_dir)
  orig_path = File.join(restore_dir, File.basename(bk_path).sub(/_\d+/, ''))

  if Dir.exist?(bk_path) || File.exist?(bk_path)
    FileUtils.cp_r(bk_path, orig_path)
    puts "Restored from: #{bk_path} to #{orig_path}"
  else
    puts "Backup not found!"
  end
end

backup_dir = 'bups'
FileUtils.mkdir_p(backup_dir)

src = 'Vishwa_File/Vishwa.txt'
backup(src, backup_dir)

bk_path = Dir.glob("#{backup_dir}/#{File.basename(src)}_*").last
restore(bk_path, File.dirname(src)) if bk_path

