class Location
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def trainers()
        locations_trainers = []
        Trainer.all.each do |trainer|
            if trainer.location == self
                locations_trainers.push(trainer)
            end
        end
        locations_trainers
    end

    def clients()
        locations_clients = []
        self.trainers.each do |trainer|
            trainer.clients.each do |client|
                locations_clients.push(client)
            end
        end
        locations_clients
    end

    def client_count()
        self.clients.length
    end

    def self.least_clients()
        gym_with_least = self.all[0]
        self.all.each do |location|
            if location.client_count < gym_with_least.client_count
                gym_with_least = location
            end
        end
        gym_with_least
    end

    def self.all()
        @@all
    end 

end