# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# XXX DRAFT: included categories: "chinese", "italian", "japanese"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
a = [
  dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"},
  pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"},
  otro_resto = {name: "español", address: "al lado", category: "japanese"},
  restito = {name: "hah", address: "cerca", category: "chinese"},
  restel = {name: "lol", address: "lejos", category: "italian"}
]

a.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Total of #{a.count} restaurants created. Finished!"
