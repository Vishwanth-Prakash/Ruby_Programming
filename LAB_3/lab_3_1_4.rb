class GradeManagement
  def initialize
    @students = {}
  end

  def add_student
    print "Student Name: "
    name = gets.chomp

    subjects = []
    grades = []

    print "Number of Subjects: "
    num_subjects = gets.chomp.to_i

    num_subjects.times do |i|
      print "Subject ##{i + 1}: "
      subjects << gets.chomp
      print "Grade: "
      grades << gets.chomp.to_i
    end

    @students[name] = { subjects: subjects, grades: grades }
    puts "Student Added"
  end

  def calculate_averages
    if @students.empty?
      puts "No records found."
    else
      @students.each do |name, details|
        avg = details[:grades].sum.to_f / details[:grades].size
        puts "#{name}'s Average: #{avg.round(2)}"
      end
    end
  end
end

grade_management = GradeManagement.new

loop do
  puts "\n1. Add Student"
  puts "2. Calculate Averages"
  puts "3. Exit"
  print "Choice: "
  choice = gets.chomp.to_i

  case choice
  when 1 then grade_management.add_student
  when 2 then grade_management.calculate_averages
  when 3 then break
  else puts "Invalid choice."
  end
end
