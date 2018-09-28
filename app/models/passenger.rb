lass Passenger
  	attr_accessor :ride, :total
  	attr_reader :name

  	def initialize(name)
  		@name = name
  		@@all << self
  		@total_distance = 0.to_f
  	end

  	def name
  		@name
  	end

  	def self.all
  	   @@all
  	end

      def total_distance
      	@total_distance += new_distance
      end

      def self.premiun_members

      end

      def hundred_miles_rides
      end

end
