require 'date'

class Room
  attr_accessor :room_number, :room_type, :price_per_night

  def initialize(room_number, room_type, price_per_night)
    @room_number = room_number
    @room_type = room_type
    @price_per_night = price_per_night
    @reservations = []
  end

  def available?(start_date, end_date)
    @reservations.none? do |reservation|
      (start_date < reservation[:end_date] && end_date > reservation[:start_date])
    end
  end

  def book(start_date, end_date)
    if available?(start_date, end_date)
      @reservations << { start_date: start_date, end_date: end_date }
      puts "Room #{@room_number} booked from #{start_date} to #{end_date}."
    else
      puts "Room #{@room_number} is not available from #{start_date} to #{end_date}."
    end
  end

  def cancel(start_date, end_date)
    reservation = @reservations.find do |r|
      r[:start_date] == start_date && r[:end_date] == end_date
    end

    if reservation
      @reservations.delete(reservation)
      puts "Reservation for Room #{@room_number} from #{start_date} to #{end_date} has been canceled."
    else
      puts "No reservation found for Room #{@room_number} from #{start_date} to #{end_date}."
    end
  end

  def display_details
    puts "Room Number: #{@room_number}"
    puts "Room Type: #{@room_type}"
    puts "Price per Night: $#{@price_per_night}"
    puts "Reservations:"
    @reservations.each do |reservation|
      puts "  From #{reservation[:start_date]} to #{reservation[:end_date]}"
    end
  end
end

room = Room.new(101, "Deluxe", 150)

room.display_details
room.book(Date.new(2024, 8, 20), Date.new(2024, 8, 25))
room.book(Date.new(2024, 8, 26), Date.new(2024, 8, 30))
room.book(Date.new(2024, 8, 23), Date.new(2024, 8, 28))

room.display_details

room.cancel(Date.new(2024, 8, 26), Date.new(2024, 8, 30))
room.display_details
