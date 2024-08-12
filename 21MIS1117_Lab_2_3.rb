class VIT
  def initialize(name, regNo = nil, empid = nil)
    @name = name
    @regNo = regNo
    @empid = empid
  end

  def student
    "#{@name}, Reg No: #{@regNo}"
  end

  def faculty
    "#{@name}, Emp ID: #{@empid}"
  end
end

stud = VIT.new("vishwa", 1117)
emp = VIT.new("yogesh", nil,123)

puts stud.student
puts emp.faculty



