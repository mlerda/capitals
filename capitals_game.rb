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
		#you're getting a list of ALL countries
		response = RestClient.get("http://api.worldbank.org/countries/bm?format=json") 
		#Here you are parsing it from json into a Ruby hash
		parsed = JSON.parse(response)
		#Here you are simply grabbing the First country (not any specific country) of that list and then its capital
		country_capital = parsed[1][0]["capitalCity"]
		#Here you are creating a new country object and putting into the country array. 
		#side note: think about the naming of what you're doing here. You are creating a new country object
		#--storing only its capital, and then putting in a country array within a larger Capital class
		#--this is a bit confusing in terms of nomenclature
		#--Think about the heirarchy here and what you're grabbing from the parsed hash
		@country << Countries.new({capital: country_capital})	
	end


  def display_countries
  	#this will simply print the array of the country attribute of your Capital class
		country.to_s
	end

end
