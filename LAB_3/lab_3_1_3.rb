class MarketPlace
  def initialize
    @products = []
  end

  def add_product
    print "Name: "
    name = gets.chomp
    print "Price: "
    price = gets.chomp.to_i
    print "Quantity: "
    qty = gets.chomp.to_i

    @products << { name: name, price: price, qty: qty }
    puts "Product Added"
  end

  def display_product
    if @products.empty?
      puts "No products available."
    else
      @products.each_with_index do |prd, index|
        puts "\nProduct #{index + 1}: #{prd[:name]}, Price: #{prd[:price]}, Quantity: #{prd[:qty]}"
      end
    end
  end

  def tot_value
    @products.each_with_index do |prd, index|
      puts "Total Value of Product #{index + 1} (#{prd[:name]}): Rs.#{prd[:price] * prd[:qty]}"
    end
  end
end

marketplace = MarketPlace.new

loop do
  puts "\n1. Add Product"
  puts "2. Display Products"
  puts "3. Product Values"
  puts "4. Exit"
  print "Choice: "
  choice = gets.chomp.to_i

  case choice
  when 1 then marketplace.add_product
  when 2 then marketplace.display_product
  when 3 then marketplace.tot_value
  when 4 then break
  else puts "Invalid choice."
  end
end
