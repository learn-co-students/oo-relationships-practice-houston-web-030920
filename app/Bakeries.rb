class Bakery
    attr_accessor :name
       @@all = []
    def initialize(name)
        @name = name
        @@all << self


    end

    def ingredients
        #return an array of ingredients for the bakerys desserts
        result = []
        self.desserts.each do |dessert|         #Calls the desserts method on this instance of bakery, and iterates through an array of this bakery's desserts
            Ingredient.all.each do |ingredient| #Iterates throgh all the ingredients(in general) and selects each ingredient 
                if ingredient.dessert == dessert    #compares if the selected ingredient's dessert instance is equal to the CURRENT dessert instance(being iterated on). Using one of the methods again!(#desserts)
                    result.push(ingredient) #add that ingredient to the array
                end 
            end 
        end 
        result
    end

  
       
    
    def desserts
        array = []
        Dessert.all.each do |dessert|
            if dessert.bakery== self
            array << dessert.name
            end
        end
    
        return array
    end

    def average_calories
        #should return a number totaling the average 
        #number of calories for the desserts sold at this bakery
        total  = 0 
        self.ingredients.each do |ingredient|   #for everyingredient on a speific instance of this bakery's desserts, select each ingredient
            total += ingredient.calorie_count.to_i #add the calories count(to integer)to the total
        end 
        total/(self.ingredients.count)
    end

    

    def shopping_list
        #should return a string of names for ingredients for the bakery
        result = "" 
        # array = [] 
        self.ingredients.each do |ingredient|
            # array.push(ingredient)
            # array.each do |passing|
            result += ingredient.name + ", " 
        end
    result = result.chop.chop 
    result += "." 
    result
    end
end