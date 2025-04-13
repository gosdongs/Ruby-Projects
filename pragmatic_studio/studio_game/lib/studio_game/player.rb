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

if __FILE__ == $0
  test_player = Player.new("jase")

  puts test_player.name
  puts test_player.health

  test_player.boost

  puts test_player.health

  test_player.drain

  puts test_player.health
end