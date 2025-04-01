def say_hello(name:, health: 100)
  "I'm #{name.capitalize} with a health of #{health}"
end

puts say_hello(name: "tommy", health: 100)
puts say_hello(name: "janelle")
puts say_hello(health: 99, name: "chris")