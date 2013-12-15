require_relative "capitals_game"
require_relative "countries"

capitals = Capitals.new
puts "Hello! Choose from the following countries to discover the name of its capital: "
puts "Bermuda, Canada, United States"
user_input = gets.chomp.to_s
puts capitals.display_countries

