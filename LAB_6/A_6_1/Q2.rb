def VIT_register_student(name, age)
  begin
    raise "Age must be 18 or older" if age < 18
    puts "#{name} registered successfully!"
  rescue => e
    puts "Error: #{e.message}. Please enter a valid age."
    print "Enter age again for #{name}: "
    age = gets.to_i
    retry
  end
end

print "Enter student name: "
name = gets.chomp
print "Enter age: "
age = gets.to_i

VIT_register_student(name, age)
