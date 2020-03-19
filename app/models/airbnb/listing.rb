class Listing

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.most_popular
        self.all.max_by {|listing| self.all.count(listing)}
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| city == listing.location}
    end
end


