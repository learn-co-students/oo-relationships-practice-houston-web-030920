class Ride
    @@all = []
    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all.push(self)
    end 

    def self.all()
        @@all
    end 

    def self.average_distance()
        average = 0.0
        self.all.each do |ride|
            average += ride.distance
        end
        average = average / self.all.length
    end 
end 