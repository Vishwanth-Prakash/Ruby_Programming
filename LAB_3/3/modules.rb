module Shapes
  def area
    raise "Area method not implemented"
  end

  def perimeter
    raise "Perimeter method not implemented"
  end

  def display_info
    puts "Area: #{area}"
    puts "Perimeter: #{perimeter}"
  end
end

class Rectangle
  include Shapes

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2 * (@length + @width)
  end
end


class Circle
  include Shapes

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius**2
  end

  def perimeter
    2 * Math::PI * @radius
  end
end

rectangle = Rectangle.new(10, 5)
puts "Rectangle:"
rectangle.display_info

circle = Circle.new(7)
puts "\nCircle:"
circle.display_info
