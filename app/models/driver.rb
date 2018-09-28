

class Driver

	attr_reader :name

  	@@all = []
  	def initialize(name)
  		@name = name
  		@@all << self
  	end


  	def name
  		@name
  	end

  	def passenger_names
  		Passenger.name
  	end

      def self.all
      	@@all
      end

end
