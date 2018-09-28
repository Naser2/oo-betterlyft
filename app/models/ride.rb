
class Ride
	attr_accessor :passenger, :driver, :distance
	@@all

    def initialize(passenger, driver, distance)
    	@@all << self
    	@distance = distance.to_f(1)
    end

    	def self.all
    		@@all
    	end

    	def passenger
    		Passenger
    	end

    	def driver
    		Driver
    	end

    	def disntance
    		distance
    	end

    	def self.average_distance
    	end 
end
