def VIT_register_student(name, age)
  begin
    raise "Age must be 18 or older" if age < 18
    puts "#{name} registered successfully!"
  rescue => e
    puts "Registration Error: #{e.message}"
  end
end

VIT_register_student("Alice", 20) 
VIT_register_student("Bob", 17)    