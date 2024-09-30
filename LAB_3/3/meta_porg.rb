class DynamicMethods
    def self.create_method(name, &block)
      define_method(name, &block)
    end
  end
  
  class MyDynamicClass < DynamicMethods
  end
  
  obj = MyDynamicClass.new
  
  MyDynamicClass.create_method(:hello) do
    puts "Hello from dynamically created method!"
  end
  
  obj.hello
  
  MyDynamicClass.create_method(:greet) do |name|
    puts "Hello, #{name}!"
  end
  
  obj.greet("Alice")
  