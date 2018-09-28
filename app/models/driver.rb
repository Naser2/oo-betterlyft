require 'pry'

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

    def passenger_names # Returns all passengers of given dirver => ["Ben", "Tyler", "Sekou"]
      passenger_names = []
        Ride.all.select do |ride|
        passenger_names <<  ride.passenger.name
      end
       passenger_names.uniq!#got rid of duplicate passsenger's name
    end

     # ADD a ride count per each driver

    def rides  # returns rides of given driver
        Ride.all.find_all do|ride| ride.driver == self
      end
    end


    def milleage_counter
      counter = 0
      Ride.all.each do |ride| counter += ride.distance
      end
      counter
    end


    def self.milleage_cap(distance) #not completed 
      cap = []
      Driver.all.select do |driver| unless
      driver.milleage_counter <= distance
      cap << driver.milleage_counter
        end
        # return "#{driver.name} your milleage is #{milleage_counter}"
      #end
      end
    end

    def self.all
    	@@all
    end

end
