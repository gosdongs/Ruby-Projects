10.times do
  puts "Howdy!"
end

puts "*" * 30

10.times { puts "Howdy!" }

puts "*" * 30

5.upto(8) do |i|
  puts "#{i} alligator"
end

puts "*" * 30

5.upto(8) { |i| puts "#{i} alligator" }

puts "*" * 30

3.downto(1) do |i|
  puts "launch in #{i}"
end

puts "*" * 30

3.downto(1) { |i| puts "launch in #{i}" }

puts "*" * 30

words = %w[dog zebra elephant chimpanzee]

words.each do |word|
  puts word.length
end

puts "*" * 30

words.each { |word| puts word.length }