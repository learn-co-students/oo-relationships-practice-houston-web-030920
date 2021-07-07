class Character

    attr_accessor :actor, :name, :show, :movie

    @@all = []

    def initialize(options) # allows us to pass any combination of options as hash
        @name = options[:name]
        @actor = options[:actor]
        @show = options[:show]
        @movie = options[:movie]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances

    end
    
end