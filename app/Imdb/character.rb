class Character
    @@all = []
    attr_accessor :name, :actor

    def initialize(options)
        @name = options[:name]
        @actor = options[:actor]
        @@all.push(self)
    end 
    
    def movies()
        Movie.all.select {|movie| movie.characters.include?(self)}
    end

    def shows()
        Show.all.select {|show| show.characters.include?(self)}
    end

    def appearance_count()
        self.movies.length + self.shows.length
    end 

    def self.most_appearances()
        busy_character = self.all[0]
        self.all.each do |character|
            if character.appearance_count > busy_character.appearance_count
                busy_character = character
            end
        end
        busy_character
    end
    
    def self.all()
        @@all
    end
end 