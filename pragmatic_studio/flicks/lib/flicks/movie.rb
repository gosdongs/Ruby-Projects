class Movie
  attr_reader :rank, :snacks_eaten
  attr_accessor :title

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
    @snacks_eaten = Hash.new(0)
  end

  def add_snack(name, price)
    @snacks_eaten[name] += price
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def total_snack_price
    @snacks_eaten.values.sum
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