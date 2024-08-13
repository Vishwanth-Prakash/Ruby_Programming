class Room
  def initialize(num, type, price)
    @num = num
    @type = type
    @price = price
    @reservations = []
  end

  def available?(start_date, end_date)
    @reservations.none? do |r|
      (start_date < r[:end] && end_date > r[:start])
    end
  end

  def book(start_date, end_date)
    if available?(start_date, end_date)
      @reservations << { start: start_date, end: end_date }
      puts "Room #{@num} booked from #{start_date} to #{end_date}."
    else
      puts "Room #{@num} not available."
    end
  end

  def cancel(start_date, end_date)
    reservation = @reservations.find { |r| r[:start] == start_date && r[:end] == end_date }

    if reservation
      @reservations.delete(reservation)
      puts "Reservation for Room #{@num} canceled."
    else
      puts "No reservation found."
    end
  end

  def details
    puts "Room: #{@num}, Type: #{@type}, Price: $#{@price}"
    puts "Reservations:"
    @reservations.each do |r|
      puts "  From #{r[:start]} to #{r[:end]}"
    end
  end
end

room = Room.new(101, "Deluxe", 150)

room.book("2024-08-20", "2024-08-25")
room.book("2024-08-26", "2024-08-30")
room.book("2024-08-23", "2024-08-28")

room.details

room.cancel("2024-08-26", "2024-08-30")
room.details
