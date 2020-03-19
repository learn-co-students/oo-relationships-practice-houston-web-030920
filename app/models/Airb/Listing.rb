class Listing
    attr_reader :city,:guest
    @@all = []
    def self.all
      @@all
    end
    def initialize( city)
      @city = city
      @@all << self
    end
    def guests
      guest_arr = []
      trips.each do |trip|
        guest_arr << trip.guest
      end
      guest_arr
    end
    def trips
      Trip.all.select do |trip|
        trip.listing == self
      end
    end
    def trip_count
      trips.count
    end
    def self.find_all_by_city(city)
      Listing.all.select do |listing|
        listing.city == city
      end
    end
    def self.most_popular
        
        @@all.max_by do |listing|
            listing.trip_count
        end

    end
  end