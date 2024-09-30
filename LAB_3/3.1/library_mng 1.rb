class LibraryManagement
    def initialize
      @books = []
    end
  
    def add_book
      puts "Enter the Book Title: "
      title = gets.chomp
      puts "Enter the Book Author: "
      author = gets.chomp
      puts "Enter the Book Genre: "
      genre = gets.chomp
      puts "Enter the Book Publication Year: "
      pub_yr = gets.chomp
  
      @books << { "title" => title, "author" => author, "genre" => genre, "pub_yr" => pub_yr }
      puts "Book Added"
    end
  
    def display_books
      if @books.empty?
        puts "No books available."
      else
        @books.each_with_index do |book, index|
          puts "Book #{index + 1}:"
          puts " Title: #{book['title']}"
          puts " Author: #{book['author']}"
          puts " Genre: #{book['genre']}"
          puts " Publication Year: #{book['pub_yr']}"
        end
      end
    end
  
    def search_book
      puts "Enter the Publication Year: "
      year = gets.chomp
      res = @books.select { |book| book['pub_yr'] == year }
  
      if res.empty?
        puts "No books registered in #{year}."
      else
        puts "Books published in #{year}:"
        res.each_with_index do |book, index|
          puts "Book #{index + 1}:"
          puts " Title: #{book['title']}"
          puts " Author: #{book['author']}"
          puts " Genre: #{book['genre']}"
          puts " Publication Year: #{book['pub_yr']}"
        end
      end
    end
  end
  
  library = LibraryManagement.new
  
  choice = 0
 loop do
    puts "\nMenu:"
    puts "1. Add Book"
    puts "2. Display Books"
    puts "3. Search Books"
    puts "4. Exit"
    print "Enter Your Choice: "
    choice = gets.chomp.to_i
  
    case choice
    when 1
      library.add_book
    when 2
        puts "\nYou have selected Display Books"
      library.display_books
    when 3
        puts "\nYou have selected Search Book"
      library.search_book
    when 4
      puts "Exiting..."
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
