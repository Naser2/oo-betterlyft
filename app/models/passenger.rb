class Passenger

  	attr_reader :name

     @@all = []

    	def initialize(name)
    		@name = name
    		@@all << self
      end


    	def name
    		@name
    	end

    	def self.all
    	   @@all
    	end

      def total_distance
         Ride.all.select do |ride|
         ride.passenger = passenger
         end
        ride
      end

      def rides #ben.rides => Kanika
         Ride.all.select do |ride|
        ride.passenger == self
        end
      end

      def driver   # ben.rides => Kanika + jon : FIX this
        Ride.all.map do |ride|
        ride.driver
        end
     end

      def self.premiun_members   #FIX this
      hundred_miles_rides
      end

      def hundred_miles_rides
        counter = 0.round(2)
        premimum_requisite = 100
        premium = []

        Ride.all.select do |ride|
          counter += ride.distance
          if counter >= premimum_requisite
             premium << ride.passenger.name
          end
        end
      end


      # - `Passenger#rides`
      # - Returns an array of Ride instances that this person has been on
      # - `Passenger#drivers`
      # - Returns an array of Driver instances that this person has rode with
      # - `Passenger#total_distance`
      # - Returns the floating number that represents the total distance the passenger has travelled using the service
      # # - `Passenger.all`
      # # - Returns an array of all Passengers
      # - `Passenger.premium_members`
      # - Returns an array of all Passengers who have travelled over 100 miles in total with the service

      # <!-- #### Ride
end
