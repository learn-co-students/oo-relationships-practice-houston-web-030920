class Guest
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def listings()
        guests_listings = []
        Trip.all.each do |trip|
            if trip.guest == self
                guests_listings.push(trip.listing)
            end
        end
        guests_listings
    end 

    def trips()
        Trip.all.select {|trip| trip.guest == self}
    end 

    def trip_count()
        self.trips.length
    end 

    def self.all()
        @@all
    end 

    def self.pro_traveller()
        self.all.select {|guest| guest.trip_count > 1}
    end    

    def self.find_all_by_name(name)
        self.all.select {|guest| guest.name == name}
    end
end