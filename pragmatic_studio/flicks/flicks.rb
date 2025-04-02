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

movie_1 = Movie.new("goonies", 10)

number_rolled = rand(1..6)

case number_rolled
when 1..2
  movie_1.thumbs_down
  puts "#{movie_1.title} got a thumbs down!"
when 3..4
  puts "#{movie_1.title} got skipped!"
else
  movie_1.thumbs_up
  puts "#{movie_1.title} got a thumbs up!"
end


# puts movie_1.title
# movie_1.title = "gooneys"
# puts movie_1.title

# puts movie_1.rank

# puts movie_1
# movie_1.thumbs_up
# puts movie_1
# movie_1.thumbs_up
# puts movie_1

# movie_2 = Movie.new("ghostbusters", 9)
# puts movie_2
# movie_2.thumbs_down
# puts movie_2

# movie_3 = Movie.new("goldfinger")
# puts movie_3