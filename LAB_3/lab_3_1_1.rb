class LibraryManagement
  def initialize
    @books = []
  end

  def add_book
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    print "Genre: "
    genre = gets.chomp
    print "Publication Year: "
    pub_yr = gets.chomp

    @books << { title: title, author: author, genre: genre, pub_yr: pub_yr }
    puts "Book Added"
  end

  def display_books
    if @books.empty?
      puts "No books available."
    else
      @books.each_with_index do |book, index|
        puts "Book #{index + 1}: #{book[:title]} by #{book[:author]}, Genre: #{book[:genre]}, Year: #{book[:pub_yr]}"
      end
    end
  end

  def search_book
    print "Publication Year: "
    year = gets.chomp
    result = @books.select { |book| book[:pub_yr] == year }

    if result.empty?
      puts "No books from #{year}."
    else
      result.each_with_index do |book, index|
        puts "Book #{index + 1}: #{book[:title]} by #{book[:author]}, Genre: #{book[:genre]}, Year: #{book[:pub_yr]}"
      end
    end
  end
end

library = LibraryManagement.new

loop do
  puts "\nMenu:"
  puts "1. Add Book"
  puts "2. Display Books"
  puts "3. Search Books"
  puts "4. Exit"
  print "Choice: "
  choice = gets.chomp.to_i

  case choice
  when 1 then library.add_book
  when 2 then library.display_books
  when 3 then library.search_book
  when 4 then break
  else puts "Invalid choice."
  end
end
