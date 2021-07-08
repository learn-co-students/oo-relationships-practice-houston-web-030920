class Show
    @@all = []
    attr_accessor :name, :characters

    def initialize(options)
        @name = options[:name]
        @characters = options[:characters]
        @@all.push(self)
    end 

    def on_the_big_screen()
        Movie.all.select {|movie| movie.name == self.name}
    end
    
    def self.all()
        @@all
    end
end