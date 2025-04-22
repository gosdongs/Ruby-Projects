class Player
  attr_reader :health, :found_treasures
  attr_accessor :name

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @health + points
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def points
    @found_treasures.values.sum
  end

  def to_s = "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}"
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