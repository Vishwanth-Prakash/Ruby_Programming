require 'csv'
csv_file_path = "Vishwa_File/sample.csv"
CSV.open(csv_file_path, "wb") do |csv|
    csv << ["Name", "Mess", "Block"]
    csv << ["Vishwa", "Veg", "D2 Block"]
    csv << ["Bruce", "Non-veg", "B Block"]
    csv << ["Harish", "Veg", "A Block"]
  end
mess_type = "Veg"
CSV.foreach(csv_file_path, headers: true) do |row|
  if row['Mess'] == mess_type
    puts "Name: #{row['Name']}, Mess: #{row['Mess']}, Block: #{row['Block']}"
  end
end

