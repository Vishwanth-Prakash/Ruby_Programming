class Movie
  def initialize(title, duration, total_seats, ticket_prices)
    @title = title
    @duration = duration
    @total_seats = total_seats
    @available_seats = total_seats
    @ticket_prices = ticket_prices
    @booked_tickets = Hash.new(0)
  end

  def display_details
    puts "Movie: #{@title}"
    puts "Duration: #{@duration} minutes"
    puts "Available Seats: #{@available_seats}/#{@total_seats}"
    @ticket_prices.each { |type, price| puts "#{type.capitalize} Ticket: $#{price}" }
  end

  def book_tickets(ticket_type, quantity)
    if @ticket_prices[ticket_type] && quantity <= @available_seats
      @available_seats -= quantity
      @booked_tickets[ticket_type] += quantity
      puts "Booked #{quantity} #{ticket_type} ticket(s)."
    else
      puts "Booking failed."
    end
  end

  def calculate_total
    total = @booked_tickets.sum { |type, qty| @ticket_prices[type] * qty }
    puts "Total Price: $#{total}"
  end

  def cancel_booking(ticket_type, quantity)
    if @booked_tickets[ticket_type] >= quantity
      @booked_tickets[ticket_type] -= quantity
      @available_seats += quantity
      puts "Canceled #{quantity} #{ticket_type} ticket(s)."
    else
      puts "Cancellation failed."
    end
  end
end

movie = Movie.new("Inception", 148, 100, { regular: 12, premium: 18 })

movie.book_tickets(:regular, 5)
movie.book_tickets(:premium, 3)
movie.calculate_total
movie.book_tickets(:premium, 100)
movie.cancel_booking(:premium, 2)
movie.display_details
