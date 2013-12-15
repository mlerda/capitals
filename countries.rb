class Countries
	attr_accessor :name, :capital
	def initialize(options)
		@name = options[:name]
		@capital = options[:capital]
	end

	def to_hash
		return { name: @name, capital: @capital }
	end

	def to_s
		"#{@name}, #{@capital}"
	end


end