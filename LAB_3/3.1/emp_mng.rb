class EmployeeManagement

    def initialize
        @@employee = []
    end

    def add_emp
        puts "Enter the Name of the Employee : "
        name = gets.chomp
        puts "Enter the Department of the Employee : "
        dept = gets.chomp
        puts "Enter the Salary of the Employee : "
        sal = gets.chomp

        @@employee << { "name" => name, "dept" => dept, "sal" => sal}
        puts "Employee Added"
    end

    def display_emp
        if @@employee.empty?
            puts "No employee is found."
        else
            @@employee.each_with_index do |emp, index|
                puts "\n"
                puts "Employee #{index + 1}"
                puts "Name: #{emp['name']}"
                puts "Department: #{emp['dept']}"
                puts "Salary: #{emp['sal']}"
            end
        end
    end 

    def high_paid
        highest = @@employee.max_by {|emp| emp["sal"]}
        if highest
            puts "Highest Paid Employee "
            puts "Name: #{highest['name']} "
            puts "Department: #{highest['dept']} "
            puts "Salary: #{highest['sal']} "
        else
            puts "No records found"
        end
    end
end

    Employee = EmployeeManagement.new
    choice = 0
loop do 
    puts "\nChoose your option :"
    puts "1. Add Employee"
    puts "2. Display Employees"
    puts "3. Find Highest Paid Employee"
    puts "4. Exit"
    print "Enter Your Choice: "
    choice = gets.chomp.to_i
  
    case choice
    when 1
        puts "\nYou have selected Add Employee"
        Employee.add_emp
    when 2
        puts "\nYou have selected Display Employee"
        Employee.display_emp
    when 3
        Employee.high_paid
    when 4
      puts "Exiting..."
      break
    else
      puts "Invalid choice. Please try again."
    end
  end