class Dessert
 attr_accessor :bakery,:ingredients,:name
     @@all=[]
    def initialize(name,bakery,ingredients)
        @name = name
        @bakery = bakery
        @ingredients = ingredients
        @@all <<self
        



    end

  def self.all
    @@all
  end

  def ingredients
    array = []
    Ingredients.all.each do |x|
        array << x.dessert
    end
    return array
end

class Dessert
  attr_accessor :name, :bakery
  @@all = []
def initialize(name, bakery)
  @name = name
  @bakery = bakery
  @@all.push(self)
end

def ingredients
#should return an array of ingredients for the dessert
result = []
Ingredient.all.each do |ingredient|
  if ingredient.dessert == self 
      result.push(ingredient)
  end 
end
  result 
end
def calories
#should return a number totaling all the calories
#for all the ingredients included in that dessert
total = 0 
self.ingredients.each do |ingredient|       #for array of ingredients, iterate over each ingredient      
  total += ingredient.calorie_count.to_i
  end 
total
end
def self.all
#should return an array of all desserts
  @@all
end
end








end