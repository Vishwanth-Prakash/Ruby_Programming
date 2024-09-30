class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def greet
      puts "Hello, my name is #{@name}."
    end
  end
  
  person = Person.new("Alice", 30)
  
  puts "Methods available to person:"
  puts person.methods.sort
  
  puts "\nInstance variables in person:"
  puts person.instance_variables
  
  puts "\nCalling greet method using reflection:"
  person.send(:greet)
  
  puts "\nModifying and accessing instance variables using reflection:"
  person.instance_variable_set(:@age, 31)
  puts "Updated age: #{person.instance_variable_get(:@age)}"
  