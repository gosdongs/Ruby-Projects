require_relative "lib/studio_game/game"
require_relative "lib/studio_game/player"

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