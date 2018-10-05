require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Put your variables here~!
#DRIVERS
jon = Driver.new('Jon')
kanika = Driver.new('kanika')

#PASSENGERS
tyler = Passenger.new('Tyler') ##<Passenger:0x00007f9f718a4dd8 @name="Tyler", @total_distance=0.0>
ben = Passenger.new('Ben')
sekou = Passenger.new('Sekou')


#Kyle is a test. He has No Rides
kyle = Passenger.new('Kyle')

#kanika's passengers: Ben & Tyler
ride1 = Ride.new(1, ben, kanika, 58.265)
ride2 = Ride.new(2,ben, kanika, 2.2)
ride3 = Ride.new(3,tyler, kanika, 3.4)


# Sekou is Jon passenger
ride4 = Ride.new(1, sekou, jon, 1)


binding.pry
