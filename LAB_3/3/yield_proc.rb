def greet
  puts "Before greeting"
  yield if block_given?
  puts "After greeting"
end

greet { puts "Hello from the block!" }
say_hello = ->(name) { puts "Hello, #{name}!" }
say_hello.call("Alice")

multiply = Proc.new { |a, b| a * b }
puts "4 * 5 = #{multiply.call(4, 5)}"

def example(proc_obj, lambda_obj)
  puts "Running Proc"
  puts "Proc result: #{proc_obj.call(3, 7)}"
  
  puts "Running Lambda"
  lambda_obj.call("Bob")
  
  puts "Running block with yield"
  yield if block_given?
end

my_proc = Proc.new { |x, y| x + y }
my_lambda = ->(name) { puts "Goodbye, #{name}!" }

example(my_proc, my_lambda) { puts "This is a block with yield." }
