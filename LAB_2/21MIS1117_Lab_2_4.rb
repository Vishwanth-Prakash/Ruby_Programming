class VIT
  @@person = 0

  def initialize(name, role)
    @name = name
    @role = role
    @@person += 1	
  end

  def self.total_persons
    "Total persons in college is #{@@person}"
  end
end

p1 = VIT.new("Vishwa", "Student")
p2 = VIT.new("Yogesh", "Faculty")
p3 = VIT.new("Bruce", "Student")
p4 = VIT.new("Raja", "Faculty")

puts VIT.total_persons


