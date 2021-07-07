class Actor

    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select { |character| character.actor == self }
    end

    def character_count
        characters_played = []
        Character.all.each do |character|
            if character.actor == self
                characters_played << character.actor
            end
        end
        characters_played.count
    end

    def self.most_characters
        
    end
end