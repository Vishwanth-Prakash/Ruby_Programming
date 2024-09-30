class EmployeeManagement
  def initialize
    @employees = []
  end

  def add_emp
    print "Name: "
    name = gets.chomp
    print "Department: "
    dept = gets.chomp
    print "Salary: "
    sal = gets.chomp.to_i

    @employees << { name: name, dept: dept, sal: sal }
    puts "Employee Added"
  end

  def display_emp
    if @employees.empty?
      puts "No employees found."
    else
      @employees.each_with_index do |emp, index|
        puts "\nEmployee #{index + 1}: #{emp[:name]}, #{emp[:dept]}, Salary: #{emp[:sal]}"
      end
    end
  end 

  def high_paid
    highest = @employees.max_by { |emp| emp[:sal] }
    if highest
      puts "Highest Paid Employee: #{highest[:name]}, #{highest[:dept]}, Salary: #{highest[:sal]}"
    else
      puts "No records found."
    end
  end
end

employee_mgmt = EmployeeManagement.new

loop do
  puts "\n1. Add Employee"
  puts "2. Display Employees"
  puts "3. Find Highest Paid Employee"
  puts "4. Exit"
  print "Choice: "
  choice = gets.chomp.to_i

  case choice
  when 1 then employee_mgmt.add_emp
  when 2 then employee_mgmt.display_emp
  when 3 then employee_mgmt.high_paid
  when 4 then break
  else puts "Invalid choice."
  end
end
