class PlaylistManagement
  def initialize
    @playlist = []
    @shuffled_playlist = []
  end

  def add_song
    print "Title: "
    title = gets.chomp
    print "Artist: "
    artist = gets.chomp
    print "Genre: "
    genre = gets.chomp

    @playlist << { title: title, artist: artist, genre: genre }
    @shuffled_playlist.clear
    puts "Song added."
  end

  def shuffle_and_play
    if @playlist.empty?
      puts "The playlist is empty."
    else
      @shuffled_playlist = @playlist.shuffle if @shuffled_playlist.empty?
      song = @shuffled_playlist.shift
      puts "Playing: #{song[:title]} by #{song[:artist]} (Genre: #{song[:genre]})"
    end
  end
end

playlist_manager = PlaylistManagement.new

loop do
  puts "\n1. Add Song"
  puts "2. Shuffle and Play"
  puts "3. Exit"
  print "Choice: "
  choice = gets.chomp.to_i

  case choice
  when 1 then playlist_manager.add_song
  when 2 then playlist_manager.shuffle_and_play
  when 3 then break
  else puts "Invalid choice."
  end
end
