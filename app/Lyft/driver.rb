class Driver
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def passengers()
        drivers_passengers = []
        Ride.all.each do |ride| 
            if ride.driver == self && !drivers_passengers.include?(ride.passenger)
                drivers_passengers.push(ride.passenger)
            end 
        end 
        drivers_passengers
    end 

    def rides()
        drivers_rides = []
        Ride.all.each do |ride|
            if ride.driver == self
                drivers_rides.push(ride)
            end 
        end 
        drivers_rides
    end 

    def self.all()
        @@all
    end 

    def self.mileage_cap(cap)
        drivers_over_cap = []
        self.all.each do |driver|
            driver_distance = 0
            driver.rides.each do |ride|
                driver_distance += ride.distance
            end
            if driver_distance > cap
                drivers_over_cap.push(driver)
            end 
        end
        drivers_over_cap
    end
end 