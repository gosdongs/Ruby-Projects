class Movie
  attr_accessor :title, :rank

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank #{@rank}"
  end
end

class Playlist
  attr_reader :name, :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "**************************************"
    puts "#{@name}'s playlist:"
    puts "\nBefore watching:"
    puts @movies

    @movies.each do |movie|
      number_rolled = roll_die
      
      case number_rolled
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down!"
      when 3..4
        puts "#{movie.title} got skipped!"
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up!"
      end
    end

    puts "\nAfter watching:"
    puts @movies
  end
end

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")
playlist_1 = Playlist.new("Kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play

playlist_2 = Playlist.new("Fozzie")
playlist_2.add_movie(movie_3)
movie_4 = Movie.new("gremlines", 7)
playlist_2.add_movie(movie_4)
playlist_2.play

# puts movie_1.title
# movie_1.title = "gooneys"
# puts movie_1.title

# puts movie_1.rank

# puts movie_1
# movie_1.thumbs_up
# puts movie_1
# movie_1.thumbs_up
# puts movie_1

