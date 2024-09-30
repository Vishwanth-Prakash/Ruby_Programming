class PlaylistManagement
    def initialize
      @playlist = []
      @shuffled_playlist = []
    end
  
    def add_song
      puts "Title of the Song: "
      title = gets.chomp
      puts "Artist of the Song: "
      artist = gets.chomp
      puts "Genre of the Song: "
      genre = gets.chomp
  
      @playlist << { title: title, artist: artist, genre: genre }
      puts "Song added to the playlist."
      @shuffled_playlist.clear
    end
  
    def shuffle_and_play
      if @playlist.empty?
        puts "The playlist is empty."
      else

        if @shuffled_playlist.empty?
          @shuffled_playlist = @playlist.shuffle
        end

        song = @shuffled_playlist.shift
        puts "Currently Playing: #{song[:title]} by #{song[:artist]} (Genre: #{song[:genre]})"
      end
    end
  end
  
  mp = PlaylistManagement.new
  
  loop do
    puts "\nChoose your option:"
    puts "1. Add Song to Playlist"
    puts "2. Shuffle and Play Songs"
    puts "3. Exit"
    print "Enter Your Choice: "
    choice = gets.chomp.to_i
  
    case choice
    when 1
      puts "\nYou have selected Add Song to Playlist"
      mp.add_song
    when 2
      puts "\nYou have selected Shuffle and Play Songs"
      mp.shuffle_and_play
    when 3
      puts "Exiting..."
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
  