class Player
  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  def to_s = "I'm #{@name} with a health of #{@health}"
end

player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase", 100)
player_4 = Player.new("alex", 125)


puts player_1
puts player_2
puts player_3

puts player_4
player_4.drain
puts player_4
player_4.boost
puts player_4
