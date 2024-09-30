class DynamicMethods
  def self.create_method(name, &block)
    define_method(name, &block)
  end
end

class Vehicle < DynamicMethods
end

vehicle = Vehicle.new

Vehicle.create_method(:drive) do
  puts "The vehicle is driving."
end

Vehicle.create_method(:fuel_up) do |amount|
  puts "Fueled up with #{amount} liters."
end

vehicle.drive
vehicle.fuel_up(20)
