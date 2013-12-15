require 'json'
require 'rest-client'

class Capitals
attr_accessor :country

	def initialize
		@country = []
	end

	def get_input
    	gets.strip
  	end

  	def display_countries
		country.join("\n")
	end

	def get_from_worldbank
		response = RestClient.get("http://api.worldbank.org/country?region=NAC&format=json")
		parsed = JSON.parse(response)
		parsed[1].each do |north|
			country_name = north["name"]
			country_capital = north["capitalCity"]
			@country << Countries.new({name: country_name, capital: country_capital})
		end		
	end

end
