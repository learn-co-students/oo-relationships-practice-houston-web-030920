class Actor
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def characters()
        actors_characters = []
        Character.all.each do |character|
            if character.actor == self
                actors_characters.push(character)
            end
        end
        actors_characters
    end

    def self.most_characters()
        actor_with_most_chars = self.all[0]
        self.all.each do |actor|
            if actor.characters.length > actor_with_most_chars.characters.length
                actor_with_most_chars = actor
            end
        end
        actor_with_most_chars
    end

    
    def self.all()
        @@all
    end
end