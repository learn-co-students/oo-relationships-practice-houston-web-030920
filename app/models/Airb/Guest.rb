class Guest
    attr_reader :name
    @@all = []
    def initialize (name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def listings
      array = []
      trips.each do |trip|
        array << trip.listing
      end
      return array
    end

    def trips
      Trip.all.select do |listing|
        listing.guest == self
      end
    end

    def trip_count
        trips.count
    end

    def self.pro_traveller
      array = []
      @@all.each do |traveler|
        if traveler.trip_count > 1
          array << traveler
        end
      end
      return array
    end

    def self.find_all_by_name(name)
      Guest.all.select do |guest|
        guest.name == name 
      end
    end






  end