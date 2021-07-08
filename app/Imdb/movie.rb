class Movie
    @@all = []
    attr_accessor :name, :characters

    def initialize(options)
        @name = options[:name]
        @characters = options[:characters]
        @@all.push(self)
    end

    def actors()
        movies_actors = []
        self.characters.each do |character|
            movies_actors.push(character.actor)
        end
        movies_actors
    end

    def self.most_actors()
        movie_with_most_actors = self.all[0]
        self.all.each do |movie|
            if movie.actors.length > movie_with_most_actors.actors.length
                movie_with_most_actors = movie
            end
        end
        movie_with_most_actors
    end 

    def self.all()
        @@all
    end
end