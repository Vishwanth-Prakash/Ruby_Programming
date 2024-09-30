module Walkable
  def walk
    puts "#{name} is walking."
  end
end

module Talkable
  def talk
    puts "#{name} is talking."
  end
end

class Person
  include Walkable
  include Talkable
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Robot
  include Walkable
  include Talkable
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

person = Person.new("Pushpanath")
robot = Robot.new("Steve Rogers")

person.walk
person.talk

robot.walk
robot.talk
