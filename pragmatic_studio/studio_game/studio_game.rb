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

class Game
  attr_reader :title, :players

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players.push(player)
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "\nLet's play #{@title}!"
    puts "\nBefore playing:"
    puts @players

    @players.each do |player|
      number_rolled = roll_die
    
      case number_rolled
      when 1..2
        player.drain
        puts "#{player.name} got drained 😩"
      when 3..4
        puts "#{player.name} got skipped"
      else
        player.boost
        puts "#{player.name} got boosted 😁"
      end
    end

    puts "\nAfter playing:"
    puts @players
  end
end

player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)

game_1 = Game.new("Winner Takes All")

game_1.add_player(player_1)
game_1.add_player(player_2)
game_1.add_player(player_3)
game_1.add_player(player_4)

game_1.play

game_2 = Game.new("Chipmunks")

player_5 = Player.new("Alvin")
player_6 = Player.new("Simon")
player_7 = Player.new("Theodore")

game_2.add_player(player_5)
game_2.add_player(player_6)
game_2.add_player(player_7)

game_2.play