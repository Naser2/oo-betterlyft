require 'pry'
# driver1 = Driver.new("Helen")
# driver1.name => "Helen"
# driver1.name = "Helen Liutongco"

class Driver

	attr_reader :name

  	@@all = []

  	def initialize(name)
  		@name = name
  		@@all << self
  	end

    def self.all
    	@@all
    end

  	# def name
  	# 	@name
  	# end

    def passenger_names # Returns all passengers of given dirver => ["Ben", "Tyler", "Sekou"]
      # passenger_names = []
      driver_rides =  Ride.all.select do |ride|
       ride.driver == self
		  end
			passengers_names = driver_rides.map do |ride|
				ride.passenger.name
      end
       passenger_names.uniq!#got rid of duplicate passsenger's name
    end

     # ADD a ride count per each driver

    def rides  # returns rides of given driver
        Ride.all.select do|ride| ride.driver == self
      end
    end


    def milleage_counter
      counter = 0
      driver_rides = Ride.all.each do |ride|
				ride.driver == self
      end
			 driver_rides.each do |ride|
				counter += ride.distance
       end
     counter
		 end


    def self.milleage_cap(distance) # not completed
      driven_over_distance = Driver.all.select do |driver|
				driver.milleage_counter >  distance
			end

				driven_over_distance
			end
      # driver.milleage_counter <= distance
      # cap << driver.milleage_counter
        # return "#{driver.name} your milleage is #{milleage_counter}"
      #


end
