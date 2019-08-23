# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


neil_armstrong = Astronaut.create(name: "Neil Armstrong", age: 30, job: "Commander")
buzz_aldrin = Astronaut.create(name: "Buzz Aldrin", age: 40, job: "Engineer")
pete_conrad = Astronaut.create(name: "Pete Conrad", age: 50, job: "Aviator")

lightsail_2 = neil_armstrong.missions.create!(title: "LightSail 2", time_in_space: 2700)
chandrayaan_2 = neil_armstrong.missions.create!(title: "Chandrayaan-2", time_in_space: 5000)
mars_2020 = buzz_aldrin.missions.create!(title: "Mars 2020", time_in_space: 3300)
hayabusa_2 = buzz_aldrin.missions.create!(title: "Hayabusa2", time_in_space: 2345)
insight = pete_conrad.missions.create!(title: "InSight", time_in_space: 8000)
osiris_rex = pete_conrad.missions.create!(title: "OSIRIS-REx", time_in_space: 1500)
