
class Ride

	attr_accessor :passenger, :driver, :distance

  @@all = []

    def initialize(passenger, driver, distance)
    	@@all << self
    	@distance = distance.to_f
      @passenger = passenger
      @driver = driver
    end

  	def self.all # Return all rstored
  		@@all
  	end


    def self.average_distance  # .average_distance implies 'Self' Returns the average distance across ALL rides
        total_distance = 0

        self.all.each do |ride|  #all instances of ride instance that occured
          total_distance += ride.distance
          total_distance / Ride.all.count #Ride.all.count =>4
        end
         total_distance.round(2)  # Ride.average_distance => 64.86500000000001
    end

#       Ride.all: Returns Driver & Passenger Objects
# => [#<Ride:0x00007f8708241580
#   @distance=58.265,
#   @driver=#<Driver:0x00007f87082415a8 @name="kanika">,
#   @passenger=#<Passenger:0x00007f8708241648 @name="Ben">>,
#  #<Ride:0x00007f8708241558
#   @distance=2.2,
#   @driver=#<Driver:0x00007f87082415a8 @name="kanika">,
#   @passenger=#<Passenger:0x00007f8708241648 @name="Ben">>,
#  #<Ride:0x00007f8708241530
#   @distance=3.4,
#   @driver=#<Driver:0x00007f87082415a8 @name="kanika">,
#   @passenger=#<Passenger:0x00007f87082416c0 @name="Tyler">>,
#  #<Ride:0x00007f8708241468
#   @distance=1.0,
#   @driver=#<Driver:0x00007f87082414e0 @name="Jon">,
#   @passenger=#<Passenger:0x00007f8708241490 @name="Sekou">>]
  # inject can also round sum = array.inject(0.0){|sum,x| sum+ (x*100)} / 100
end
