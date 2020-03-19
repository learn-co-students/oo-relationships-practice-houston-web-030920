require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# list1 = Listing.new("Houston")
# list2 = Listing.new("NY")
# list3 = Listing.new("Austin")
# list4 = Listing.new("Houston")
# guest_1 = Guest.new("JJ")
# guest_2 = Guest.new("Thompson")
# guest_3 = Guest.new("Willy")
# trip1 = Trip.new(list1, guest_1)
# trip2 = Trip.new(list3, guest_1)
# trip3 = Trip.new(list1, guest_1)
# trip4 = Trip.new(list2,guest_2)
# trip5 = Trip.new(list2,guest_3)
# trip6 = Trip.new(list2,guest_2)

bake1= Bakery.new("sams")
bake2= Bakery.new("beths")

ingredient1 = Ingredients.new("mint",100)
ingredient2 = Ingredients.new("papaya",75)
ingredient3 = Ingredients.new("pineapple",50)

dessert1 = Dessert.new("cake",bake1,ingredient1)
dessert2 = Dessert.new("flan",bake1,ingredient2)
dessert3 = Dessert.new("panque",bake2,ingredient3)
dessert4 = Dessert.new("cascarron",bake2,ingredient3)




binding.pry
0