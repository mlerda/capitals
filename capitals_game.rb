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

	def get_from_worldbank
		response = RestClient.get("http://api.worldbank.org/countries/bm?format=json") 
		parsed = JSON.parse(response)
		country_capital = parsed[1][0]["capitalCity"]
		@country << Countries.new({capital: country_capital})	
	end


  	def display_countries
		country.to_s
	end

end
