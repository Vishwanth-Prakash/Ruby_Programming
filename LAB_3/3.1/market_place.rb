class MarketPlace
    def initialize
        @@products = []
    end

    def add_product
        puts "Enter the Name of the Product : "
        name = gets.chomp
        puts "Enter the Price of the Product : "
        price = gets.chomp.to_i
        puts "Enter the Quantity of the Product : "
        qty = gets.chomp.to_i

        @@products << { "name" => name, "price" => price, "qty" => qty}
        puts "Product Added"
    end

    def display_product
        if @@products.empty?
            puts "No Product found in the Market Place"
        else
            @@products.each_with_index do |prd,index|
                puts "\n"
                puts "Product #{index + 1}"
                puts "Name: #{prd['name']}"
                puts "Price: #{prd['price']}"
                puts "Quantity: #{prd['qty']}"
            end
        end
    end

    def tot_value
        @@products.each_with_index do |prd, index|
          product_value = prd["price"] * prd["qty"]
          puts "Total Value of Product #{index + 1} #{prd['name']}: Rs.#{product_value}"
        end
      end
end


mp = MarketPlace.new

choice = 0

loop do 
    puts "\nChoose your option :"
    puts "1. Add Product"
    puts "2. Display Products"
    puts "3. Sum of each Product"
    puts "4. Exit"
    print "Enter Your Choice: "
    choice = gets.chomp.to_i

    case choice
    when 1
        puts "\nYou have selected Add Product"
        mp.add_product
    when 2
        puts "\nYou have selected Display Product"
        mp.display_product
    when 3
        mp.tot_value
    when 4
      puts "Exiting..."
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
