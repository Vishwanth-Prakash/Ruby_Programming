class Employee
  def initialize(name, basic, da_pct, hra_pct)
    @name = name
    @basic = basic
    @da = da(da_pct)
    @hra = hra(hra_pct)
  end

  def da(da_pct)
    (@basic * da_pct / 100.0)
  end

  def hra(hra_pct)
    (@basic * hra_pct / 100.0)
  end

  def total
    (@basic + @da + @hra)
  end

  def display
    puts "#{@name}: Basic: #{@basic}, DA: #{@da}, HRA: #{@hra}, Total: #{total}"
  end
end

dhoni = Employee.new("Vishwa", 50000, 20, 15)
kohli = Employee.new("Prakash", 60000, 25, 20)
dhoni.display
kohli.display
