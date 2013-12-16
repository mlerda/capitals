require_relative "capitals_game"
require_relative "countries"

capitals = Capitals.new
puts "Hello! Choose from the following countries to discover the name of its capital: "
puts "Bermuda, Canada, United States"
user_input = gets.chomp.to_s
#Good job setting the input equal to a variable. Although, you don't do anything with that variable


#Here you are simply calling Capitals.new.display_countries
#Which should result in an empty array. 
#Why?
#Because when a new object is initialized, a @country attribute (type: array) is created
#Then the functon display countries simply prints that empty array
#Get from world_bank is never called so there is no information stored in the array
puts capitals.display_countries


#This is what you want to do
#Get the user input
#pass that input to a function
#that function has to call your api
#that function, or another function, should parse through the api 
#--and find certain information on the user input


