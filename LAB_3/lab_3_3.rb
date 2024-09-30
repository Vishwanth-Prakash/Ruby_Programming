module Readable
  def read
    puts "#{title} is being read."
  end
end

module Borrowable
  def borrow
    puts "#{title} has been borrowed."
  end
end

class Book
  include Readable
  include Borrowable
  
  attr_accessor :title

  def initialize(title)
    @title = title
  end
end

class Magazine
  include Readable
  include Borrowable
  
  attr_accessor :title

  def initialize(title)
    @title = title
  end
end

book = Book.new("The Great Gatsby")
magazine = Magazine.new("National Geographic")

book.read
book.borrow

magazine.read
magazine.borrow
