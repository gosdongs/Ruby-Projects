puts "Let's play a game!"
puts "\t3\n\t2\n\t1"

first_player_name = "  \n finn \t ".strip
first_player_health = 12

puts "#{first_player_name.upcase} has a health of #{first_player_health}".center(50, '*')
puts "#{first_player_name.ljust(30, '.')} #{first_player_health} healh"
puts "#{first_player_health.to_s.reverse.to_i**2}"