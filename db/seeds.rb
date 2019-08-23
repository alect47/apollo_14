# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
apollo = Mission.create(title: "Apollo 13", time_in_space: 4)
capricorn = Mission.create(title: "Capricorn 4", time_in_space: 9)
gemini = Mission.create(title: "Gemini 7", time_in_space: 4)
niel = Astronaut.create(name: 'Niel Armstrong', age: 37, job: "Commander")
phil = Astronaut.create(name: 'Phil Armstrong', age: 42, job: "Pilot")
