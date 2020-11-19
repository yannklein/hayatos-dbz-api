# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing database'
Character.destroy_all
Planet.destroy_all
puts 'Database Cleared'

puts 'Creating planets and characters'
planet_vegeta = Planet.create(
  name: 'Planet Vegeta',
  url: 'www.planetVegeta.com'
)

earth = Planet.create(
  name: 'Earth',
  url: 'www.earth.com'
)

Character.create(
  name: 'Goku',
  status: 'alive',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'www.goku.com',
  planet: planet_vegeta
)

Character.create(
  name: 'Vegeta',
  status: 'alive',
  species: 'Saiyan',
  series: 'Z',
  gender: 'Male',
  url: 'www.vegeta.com',
  planet: planet_vegeta
)

Character.create(
  name: 'Krillin',
  status: 'alive',
  species: 'Human',
  series: 'Z',
  gender: 'Male',
  url: 'www.krillin.com',
  planet: earth
)
puts 'Planets & characters created'
