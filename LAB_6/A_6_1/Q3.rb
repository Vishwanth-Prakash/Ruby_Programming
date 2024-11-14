def VIT_register_student(name, age)
  begin
    raise "Age must be 18 or older" if age < 18
    puts "#{name} registered successfully!"
  rescue => e
    puts "Error: #{e.message}. Registration failed."
  ensure
    puts "Thank you for using the registration system."
  end
end

VIT_register_student("Vishwa", 20)
VIT_register_student("Bruce", 17)