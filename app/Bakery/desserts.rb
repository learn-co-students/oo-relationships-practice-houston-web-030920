class Desserts
    @@all = []
    attr_accessor :name, :bakery, :ingredients, :calories

    def initialize(name, bakery, ingredients)
        @name = name
        @bakery = bakery
        @ingredients = ingredients
        total_calories = 0
        self.ingredients.each do |ingredient|
            total_calories += ingredient.calories
        end 
        @calories = total_calories
        @@all.push(self)
    end 

    def self.all()
        @@all
    end 
end 