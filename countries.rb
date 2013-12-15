class Countries
	attr_accessor :name, :capital
	def initialize(options)
		@name = options[:name]
		@capital = options[:capital]
	end

	def to_hash
		return { capital: @capital }
	end

	
end