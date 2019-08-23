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
