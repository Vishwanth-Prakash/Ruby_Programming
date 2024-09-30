module Vehicle
  def speed
    raise "Speed method not implemented"
  end

  def fuel
    raise "Fuel method not implemented"
  end

  def display_info
    puts "Speed: #{speed} km/h"
    puts "Fuel: #{fuel} liters"
  end
end

class Car
  include Vehicle

  def initialize(speed, fuel)
    @speed = speed
    @fuel = fuel
  end

  def speed
    @speed
  end

  def fuel
    @fuel
  end
end

class Bike
  include Vehicle

  def initialize(speed, fuel)
    @speed = speed
    @fuel = fuel
  end

  def speed
    @speed
  end

  def fuel
    @fuel
  end
end

car = Car.new(120, 50)
puts "Car:"
car.display_info

bike = Bike.new(80, 10)
puts "\nBike:"
bike.display_info
