def greet
  puts "Hi!"
  yield if block_given?
  puts "Bye!"
end

greet { puts "Hello, Vishwanth!" }

say_hello = ->(name) { puts "Hi, #{name}!" }
say_hello.call("Vishwanth")

multiply = ->(a, b) { a * b }
puts multiply.call(2, 3)

def example(proc_obj, lambda_obj)
  puts proc_obj.call(1, 2)
  lambda_obj.call("Vishwanth")
  yield if block_given?
end

my_proc = ->(x, y) { x + y }
my_lambda = ->(name) { puts "Goodbye, #{name}!" }

example(my_proc, my_lambda) { puts "This is a block!" }

