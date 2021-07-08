class Ingredients
    @@all = []
    attr_accessor :name, :calories

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all.push(self)
    end

    def dessert() # Directions ask for a single dessert, but I designed an ingredient to be able to belong to multiple desserts so I'm returning an array of desserts
        ingredients_desserts = [] 
        Desserts.all.each do |dessert|
            if dessert.ingredients.include?(self)
                ingredients_desserts.push(dessert)
            end
        end
        ingredients_desserts 
    end

    def bakery() # Directions ask for a single dessert, but I designed an ingredient to be able to belong to multiple bakeries so I'm returning an array of bakeries
        ingredients_bakeries = []
        self.desserts.each do |dessert|
            if !ingredients_bakeries.include?(dessert.bakery)
                ingredients_bakeries.push(dessert.bakery)
            end 
        end
        ingredients_bakeries
    end        

    def self.all()
        @@all
    end

    def self.find_all_by_name(find_name)
        found_ingredients = []
        self.all.each do |ingredient|
            ingredient_words = ingredient.name.split(' ')
            if ingredient_words.include?(find_name)
                found_ingredients.push(ingredient)
            end
        end
        found_ingredients
    end 
end 