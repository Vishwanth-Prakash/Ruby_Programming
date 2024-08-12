class GradeBook
  def initialize(name)
    @name = name
    @grades = {}
  end

  def add_grade(subject, grade)
    @grades[subject] = grade
  end

  def calculate_grade(grade)
    case grade
    when 0..49
      'F'
    when 50..55
      'E'
    when 56..60
      'D'
    when 61..70
      'C'
    when 71..80
      'B'
    when 81..90
      'A'
    when 91..100
      'S'
    else
      'Invalid grade'
    end
  end

  def display_grades
    puts "Grade Book for #{@name}:"
    @grades.each do |subject, grade|
      grade_type = calculate_grade(grade)
      puts "#{subject}: #{grade} - Grade: #{grade_type}"
    end
  end
end

grade_book = GradeBook.new("Vishwa")

grade_book.add_grade("Ruby", 81)
grade_book.add_grade("Maths", 72)
grade_book.add_grade("TOC", 64)

grade_book.display_grades


