def VIT_register_student(name, age)
  begin
    raise "Age must be 18 or older" if age < 18
  rescue => e
    puts "Error: #{e.message}. Registration failed."
  else
    puts "#{name} registered successfully!"
  end
end

VIT_register_student("Vishwa", 20)
VIT_register_student("Bruce", 17)

