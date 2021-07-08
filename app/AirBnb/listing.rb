class Listing
    @@all = []
    attr_accessor :name, :city

    def initialize(name, city)
        @name = name
        @city = city
        @@all.push(self)
    end 

    def guests()
        listings_guests = []
        Trip.all.each do |trip|
            if trip.listing == self
                listings_guests.push(trip.guest)
            end
        end 
        listings_guests
    end 

    def trips()
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count()
        count = self.trips.length
    end 

    def self.all()
        @@all
    end 

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end 

    
    def self.most_popular()
        most_popular_listing = self.all[0]
        self.all.each do |listing|
            if listing.trip_count > most_popular_listing.trip_count
                most_popular_listing = listing
            end
        end
        most_popular_listing
    end 

end