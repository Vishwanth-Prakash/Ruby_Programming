class GradeManagement
  def initialize
    @students = {}
  end

  def add_student
    puts "Enter the Name of the Student: "
    name = gets.chomp

    subjects = []
    grades = []

    puts "Number of Subjects? "
    num_subjects = gets.chomp.to_i

    num_subjects.times do |i|
      puts "Enter the Subject ##{i + 1} Name: "
      subject = gets.chomp
      subjects << subject

      puts "Enter the Grade for #{subject}: "
      grade = gets.chomp.to_i
      grades << grade
    end

    @students[name] = { subjects: subjects, grades: grades }
    puts "Student and grades added."
  end

  def calculate_averages
    if @students.empty?
      puts "No student records found."
    else
      @students.each do |name, details|
        average = details[:grades].sum.to_f / details[:grades].size
        puts "#{name}'s Average Grade: #{average.round(2)}"
      end
    end
  end
end
sg = GradeManagement.new

loop do
  puts "\nChoose your option:"
  puts "1. Add Student and Grades"
  puts "2. Calculate Averages"
  puts "3. Exit"
  print "Enter Your Choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "\nYou have selected Add Student and Grades"
    sg.add_student
  when 2
    puts "\nYou have selected Calculate Averages"
    sg.calculate_averages
  when 3
    puts "Exiting..."
    break
  else
    puts "Invalid choice. Please try again."
  end
end
