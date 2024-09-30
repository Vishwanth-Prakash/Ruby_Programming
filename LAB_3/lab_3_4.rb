class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def greet
      puts "Hello, my name is #{@name} and I am #{@age} years old."
    end
  end
  
  person = Person.new("Vishwanth", 18)
  puts "Calling greet method:"
  person.send(:greet)
  
  puts "\nModifying using reflection:"
  person.instance_variable_set(:@age, 20)
  puts "Updated age: #{person.instance_variable_get(:@age)}"