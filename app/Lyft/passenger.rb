class Passenger
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def rides()
        passengers_rides = []
        Ride.all.each do |ride|
            if ride.passenger == self
                passengers_rides.push(ride)
            end
        end
        passengers_rides 
    end 

    def drivers()
        passenger_drivers = []
        Ride.all.each do |ride| # Using Ride here to find drivers in order to reference a single source of truth
            if ride.passenger == self
                passenger_drivers.push(ride.driver)
            end 
        end 
        passenger_drivers
    end

    def total_distance()
        total = 0
        self.rides.each do |ride|
            total += ride.distance
        end
        total
    end 

    def self.all()
        @@all
    end 

    def self.premium_members()
        premium_list = []
        self.all.each do |passenger|
            passenger_distance = 0
            passenger.rides.each do |ride|
                passenger_distance += ride.distance
            end 
            if passenger_distance > 100
                premium_list.push(passenger)
            end 
        end
        premium_list
    end
end 