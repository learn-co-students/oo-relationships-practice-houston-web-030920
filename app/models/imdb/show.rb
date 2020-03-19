class Show

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.show == self}
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.title == self.title}
    end

end