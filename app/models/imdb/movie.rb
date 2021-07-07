class Movie
    
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select {|character| character.movie == self}
    end

    def actors
        characters.map {|character| character.actor}
    end

    def self.most_actors
        all.sort_by {|movie| movie.actors.size}[-1]
    end
end