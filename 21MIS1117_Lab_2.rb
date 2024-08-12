def show_age(name, age)
  puts "Name: #{name}"
  puts "Age: #{age}"
end

puts "Program With Arguments"
print "Enter Name: "
name = gets.chomp
print "Enter Age: "
age = gets.chomp
show_age(name, age)

def show_age()
  puts "Program Without Arguments"
  print "Enter Name: "
  name = gets.chomp
  print "Enter Age: "
  age = gets.chomp
  puts "Name: #{name}"
  puts "Age: #{age}"
end

show_age()

