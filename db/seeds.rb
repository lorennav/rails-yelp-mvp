# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" },
  { name: "Pepperoni", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" },
  { name: "Local", address: "Rua Rodrigues Sampaio, 134, Marquês de Pompal, Lisbon", category: "belgian", phone_number: "+351926437641" },
  { name: "Osteria", address: "Rua das Madres, 52/54, Madragoa, Lisbon", category: "italian", phone_number: "+351213960584" },
  { name: "SOI", address: "Rua da Moeda, 1C, Cais do Sodré, Lisbon", category: "japanese", phone_number: "+351912895391" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
