class Client
    @@all = []
    attr_accessor :name, :trainer

    def initialize(name, trainer)
        @name = name
        @trainer = trainer
        @@all.push(self)
    end 

    def assign_trainer(new_trainer)
        self.trainer = new_trainer
    end

    def self.all()
        @@all
    end

end
