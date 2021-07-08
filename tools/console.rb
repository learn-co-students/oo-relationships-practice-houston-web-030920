require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Below are intances of classes made within the app

# AIR BNB
# Guests
jon = Guest.new("Jon")
jane = Guest.new("Jane")
jack = Guest.new("Jack")
jill = Guest.new("Jill")

# Listings
one_bedroom = Listing.new("One Bedroom", "San Diego")
two_bedroom = Listing.new("Two Bedroom", "Austin")
three_bedroom = Listing.new("Three Bedroom", "Denver")

# Trips
trip_1 = Trip.new(one_bedroom, jon)
trip_2 = Trip.new(two_bedroom, jon)
trip_3 = Trip.new(one_bedroom, jane)
trip_4 = Trip.new(one_bedroom, jack)
trip_5 = Trip.new(three_bedroom, jack)
trip_6 = Trip.new(three_bedroom, jill)

# ----------------------------------------------------

# BAKERY
# Bakery
kraftsman = Bakery.new("Kraftsman")
tout_suite = Bakery.new("Toui Suite")
voodoo_donuts = Bakery.new("Voodoo Donuts")

# Ingredients
pastry_dough = Ingredients.new("pastry dough", 50)
cheese_filling = Ingredients.new("cheese filling", 100)
old_bananas = Ingredients.new("old bananas", 20)
cake_mix = Ingredients.new("cake mix", 80)
cinnamon_glaze = Ingredients.new("cinnamon glaze", 110)
rolled_dough = Ingredients.new("rolled dough", 170)
macaron_stuff = Ingredients.new("whatever is in macarons", 100)
crumbly_stuff = Ingredients.new("crumbly stuff", 90)
jelly_filling = Ingredients.new("jelly filling", 80)
sugar_glaze = Ingredients.new("sugar glaze", 130)
chocolate_icing = Ingredients.new("chocolate icing", 125)
chocolate_filling = Ingredients.new("chocolate filling", 200)
fried_dough = Ingredients.new("fried dough", 60)

# Desserts
danish = Desserts.new("danish", kraftsman, [pastry_dough, cheese_filling])
banana_nread = Desserts.new("banana bread", kraftsman, [old_bananas, cake_mix])
cinnamon_roll = Desserts.new("cinnamon roll", kraftsman, [cinnamon_glaze, fried_dough])
macarons = Desserts.new("macarons", tout_suite, [macaron_stuff])
cheesecake = Desserts.new("cheesecake", tout_suite, [cheese_filling, crumbly_stuff])
jelly_donut = Desserts.new("jelly donut", voodoo_donuts, [jelly_filling, fried_dough])
glazed_donut = Desserts.new("glazed donut", voodoo_donuts, [sugar_glaze, fried_dough])
chocolate_donut = Desserts.new("chocolate donut", voodoo_donuts, [chocolate_icing, fried_dough])
bear_claw = Desserts.new("bear claw", voodoo_donuts, [chocolate_filling, fried_dough])



# ----------------------------------------------------

# LYFT
# Driver
bobbie = Driver.new("Bobbie")
bee = Driver.new("Bee")
bri = Driver.new("Bri")

# Passenger
bob = Passenger.new("Bob")
bill = Passenger.new("Bill")
brian = Passenger.new("Brian")

# Ride
ride_1 = Ride.new(bobbie, bob, 101.5)
ride_2 = Ride.new(bee, bill, 20.3)
ride_3 = Ride.new(bri, brian, 8.3)

# ----------------------------------------------------

# IMDB

# Actor
jim_carey = Actor.new("Jim Carey")
mark_hamill = Actor.new("Mark Hamill")
harrison_ford = Actor.new("Harrison Ford")
carrie_fisher = Actor.new("Carrie Fisher")

# Character
the_grinch = Character.new({name: "The Grinch", actor: jim_carey})
ace_ventura = Character.new({name: "Ace Ventura", actor: jim_carey})
truman_burbank = Character.new({name: "Truman Burbank", actor: jim_carey})
luke_skywalker = Character.new({name: "Luke Skywalker", actor: mark_hamill})
hans_solo = Character.new({name: "Hans Solo", actor: harrison_ford})
princess_leia = Character.new({name: "Princess Leia", actor: carrie_fisher})

# Show
the_grinch_show = Show.new({name: "The Grinch", characters: [the_grinch]})
friends = Show.new({name: "Friends", characters: ["no characters found"]})
star_wars_show = Show.new({name: "Star Wars", characters: [luke_skywalker, hans_solo]})

# Movie
the_grinch_movie = Movie.new({name: "The Grinch", characters: [the_grinch]})
ace_ventura_movie = Movie.new({name: "Ace Ventura", characters: [ace_ventura]})
star_wars_movie = Movie.new({name: "Star Wars", characters: [luke_skywalker, hans_solo, princess_leia]})
star_wars_movie_2 = Movie.new({name: "Star Wars", characters: [luke_skywalker, princess_leia]})
star_wars_movie_3 = Movie.new({name: "Star Wars", characters: [luke_skywalker]})


# ----------------------------------------------------

# CROWDFUNDING
# User
sam = User.new("Sam")
sal = User.new("Sal")
susan = User.new("Susan")
sally = User.new("Sally")

# Project
tech_biz = Project.new("tech biz", susan, 3000)
medical_operation = Project.new("medical operation", sam, 1000)
robotics_project = Project.new("robotics project", sally, 900)

# Pledge
pledge_1 = Pledge.new(susan, medical_operation, 500)
pledge_2 = Pledge.new(sal, medical_operation, 300)
pledge_3 = Pledge.new(sally, medical_operation, 200)
pledge_4 = Pledge.new(sal, tech_biz, 1000)
pledge_5 = Pledge.new(sally, tech_biz, 600)
pledge_6 = Pledge.new(susan, medical_operation, 100)

# ----------------------------------------------------

# GYM
# Location
houston = Location.new("Houston")
austin = Location.new("Austin")

# Trainer
coach_mike = Trainer.new("Coach Mike", houston)
coach_mel = Trainer.new("Coach Mel", houston)
coach_ann = Trainer.new("Coach Ann", austin)

# Client
pete = Client.new("Pete", coach_mike)
pam = Client.new("Pam", coach_mike)
paul = Client.new("Paul", coach_mike)
tim = Client.new("Tim", coach_mel)
tina = Client.new("Tina", coach_mel)
matt = Client.new("Matt", coach_ann)
mary = Client.new("Mary", coach_ann)

binding.pry