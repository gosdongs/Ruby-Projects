class Movie
  attr_reader :rank
  attr_accessor :title

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
    "#{@title} has a rank of #{@rank}"
  end
end

puts __FILE__
puts $0

if __FILE__ == $0
  test_movie = Movie.new("Star Wars", 10)
  puts test_movie
end