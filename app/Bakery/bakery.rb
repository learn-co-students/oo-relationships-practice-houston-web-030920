class Bakery
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def desserts()
        Desserts.all.select {|dessert| dessert.bakery == self}
    end 

    def ingredients()
        bakerys_ingredients = []
        self.desserts.each do |dessert|
            bakerys_ingredients.push(dessert.ingredients)
        end 
        bakerys_ingredients
    end

    def average_calories()
        average = 0
        self.desserts.each do |dessert|
            average += dessert.calories
        end
        average = average / self.desserts.length
    end 

    def shopping_list()
        buy_ingredients = []
        self.desserts.each do |dessert|
            dessert.ingredients.each do |ingredient|
                if !buy_ingredients.include?(ingredient.name) 
                    buy_ingredients.push(ingredient.name)
                end 
            end 
        end 
        buy_ingredients
    end


    def self.all()
        @@all
    end
end