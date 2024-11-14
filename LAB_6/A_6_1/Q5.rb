def VIT_register_student(name, age)
  catch(:invalid_age) do
    if age < 18
      throw :invalid_age, "Age must be 18 or older"
    end
    puts "#{name} registered successfully!"
  end
rescue => e
  puts "Error: #{e.message}. Registration failed."
end

VIT_register_student("Vishwa", 20)
VIT_register_student("Bruce", 17)
