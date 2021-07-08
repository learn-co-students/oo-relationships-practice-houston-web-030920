class Trainer
    @@all = []
    attr_accessor :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all.push(self)
    end

    def clients()
        trainers_clients = []
        Client.all.each do |client|
            if client.trainer == self
                trainers_clients.push(client)
            end
        end
        trainers_clients
    end

    def client_count()
        self.clients.length
    end

    def self.most_clients()
        trainer_with_most = self.all[0]
        self.all.each do |trainer|
            if trainer.client_count > trainer_with_most.client_count
                trainer_with_most = trainer
            end
        end
        trainer_with_most
    end

    def self.all()
        @@all
    end 

end 