require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# listing1 = Listing.new("L1", "DC")
# guest1 = Guest.new("G1")
# listing2 = Listing.new("L2", "NOLA")
# guest2 = Guest.new("G2")
# listing3 = Listing.new("L3", "DC")
# guest3 = Guest.new("G3")
# trip1 = Trip.new(guest1, listing1)
# trip2 = Trip.new(guest2, listing1)
# trip3 = Trip.new(guest2, listing3)

brad_pitt = Actor.new("Brad Pitt")
ed_norton = Actor.new("Ed Norton")
steve_carell = Actor.new("Steve Carell")
fight_club = Movie.new("Fight Club")
big_short = Movie.new("The Big Short")
moneyball = Movie.new("Moneyball")
the_office_movie = Movie.new("The Office")
the_office = Show.new("The Office")
fight_club_tv = Show.new("Fight Club")
tyler_durden = Character.new({name: "Tyler Durden", actor: brad_pitt, movie: fight_club})
narrator = Character.new({name: "Narrator", actor: ed_norton, movie: fight_club})
micheal_scott = Character.new({name: "Micheal Scott", actor: steve_carell, show: the_office})
mark_baum = Character.new({name: "Mark Baum", actor: steve_carell, movie: big_short})
billy_beane = Character.new({name: "Billy Beane", actor: brad_pitt, movie: moneyball})
binding.pry
0