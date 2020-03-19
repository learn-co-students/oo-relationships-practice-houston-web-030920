class Ingredients
attr_accessor :dessert,:name,:calorie
@@all =[]
  
  def initialize(name,calorie)
    @name = name
    @calorie = calorie
    @@all <<self
   end

   def dessert
    self

   end

   def self.all
    @@all
   end
   

end

class Ingredient
  @@all = [] 
  attr_accessor :name, :dessert, :calorie_count
  def initialize(name, dessert, calorie_count)
      @name = name 
      @dessert = dessert
      @calorie_count = calorie_count
      @@all.push(self)
  end
  def self.all
  #should return an array of all ingredients
  @@all
  end 
  def self.find_all_by_name(input_ingredient)
  #should take a string argument return an array of all ingredients that
  #include that string in their name
  result = []
  Ingredient.all.each do |ingredient|
      if ingredient.name.include?(input_ingredient)
          result.push(ingredient.name)
      end
  end 
  result
  end 
end