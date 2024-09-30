class DynamicDispatcher
  def method_missing(method_name, *args)
    if method_name.to_s.start_with?("calculate")
      operation = method_name.to_s.split("calculate")[1]
      perform_calculation(operation, args)
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?("calculate") || super
  end

  private

  def perform_calculation(operation, args)
    case operation
    when "Factorial"
      puts factorial(args[0])
    when "Square"
      puts square(args[0])
    else
      puts "Unsupported operation: #{operation}"
    end
  end

  def factorial(n)
    return 1 if n == 0
    n * factorial(n - 1)
  end

  def square(n)
    n * n
  end
end

dispatcher = DynamicDispatcher.new

dispatcher.calculateFactorial(5)   # Output: 120
dispatcher.calculateSquare(4)      # Output: 16
