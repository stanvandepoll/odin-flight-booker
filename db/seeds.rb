# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# uncomment the below line to try easy updating of the database by just
# running "rails db:seed"

Airport.delete_all
Flight.delete_all

Airport.create([{ location: "NYC" }, { location: "SFO" }, { location: "AMS" }])

Flight.create([{ departure_time: "13:30-01-13-2019", 
                 departure_airport_id: "1",
                 arrival_time: "16:30-01-13-2019",
                 arrival_airport_id: "2"}, 
               { departure_time: "17:30-01-13-2019", 
                 departure_airport_id: "2",
                 arrival_time: "20:30-01-13-2019",
                 arrival_airport_id: "1"}, 
               { departure_time: "21:30-01-13-2019", 
                 departure_airport_id: "1",
                 arrival_time: "0:30-01-13-2019",
                 arrival_airport_id: "2"}])