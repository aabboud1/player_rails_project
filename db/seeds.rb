# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sportsplayer.destroy_all

Sportsplayer.create(name: "Babe Ruth", number: 9 , position: "Batter", string: "yarn", sport: "Baseball")
Sportsplayer.create(name: "Lamar Jackson", number: 8 , position: "Quater Back", string: "spgahetti", sport: "Football")
Sportsplayer.create(name: "LeBron", number: 23 , position: "Point Guard", string: "red", sport: "Basketball")



