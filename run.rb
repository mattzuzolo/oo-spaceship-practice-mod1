require 'pry'
require_relative 'models/astronaut'
require_relative 'models/space_flight'
require_relative 'models/spaceship'

#couldn't run this file. Getting this error:
#run.rb:5:in `<main>': uninitialized constant Spaceship (NameError)




pry.start


matt = Spaceship.new("Matt's ship", true)
matt2 = Spaceship.new("Matt's ship", false)
brooke = Spaceship.new("Brooke's ship", true)
bill = Spaceship.new("Bill's ship", false)
rob = Spaceship.new("Rob's ship", false)


juan = Astronaut.new(20, true, "Juan")
pablo = Astronaut.new(25, false, "Pablo")
alice = Astronaut.new(23, true, "Alice")
pablo2 = Astronaut.new(99, true, "Pablo")

matt_and_juan = Space_Flight.new(matt, juan, "Matt and Juan's mission")
brooke_and_pablo = Space_Flight.new(brooke, pablo, "Brooke and Pablo's mission")
bill_and_alice = Space_Flight.new(bill, alice, "bill and alice's mission")

matt_and_juan = Space_Flight.new("matt", "juan", "Matt and Juan's mission")
brooke_and_pablo = Space_Flight.new("brooke", "pablo", "Brooke and Pablo's mission")
bill_and_alice = Space_Flight.new("bill", "alice", "bill and alice's mission")
