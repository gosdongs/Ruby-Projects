class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @health + @name.length
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  def to_s = "I'm #{@name} with a health of #{@health} and a score of #{score}"
end

player_1 = Player.new("finn", 60)
puts player_1

number_rolled = rand(1..6)

case number_rolled
when 1..2
  player_1.drain
  puts "#{player_1.name} got drained!"
when 3..4
  puts "#{player_1.name} got skipped"
else
  player_1.boost
  puts "#{player_1.name} got boosted!"
end

# player_2 = Player.new("lucy", 90)
# player_3 = Player.new("jase", 100)
# player_4 = Player.new("alex", 125)

# puts player_4
# player_4.name = "alexander"
# puts player_4

# puts player_1
# puts player_1.health

# puts player_2
# puts player_2.health

# puts player_3
# puts player_3.health

# puts player_4
# player_4.drain
# puts player_4.health

# puts player_4
# player_4.boost
# puts player_4.health

# player_4.name = "Alexander"
# puts player_4.name
# puts player_4
