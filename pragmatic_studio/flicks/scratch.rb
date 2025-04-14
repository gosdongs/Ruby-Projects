# do
#   puts "Star Wars"
# end

9.times do |episode|
  puts "Star Wars: Episode #{episode}"
end

puts "*" * 30

1.upto(9) do |episode|
  puts "Star Wars: Episode #{episode}"
end

puts "*" * 30

1.upto(9) { |episode| puts "Star Wars: Episode #{episode}" }