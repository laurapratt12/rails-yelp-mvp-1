# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

dovetail = {name: "The dovetail", address: "E2 7JE London", phone_number: "0761243567", category: "belgian", rating: 5, content: "Great customer service"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0776579223", category: "italian", rating: 4, content: "Delicious"}
epicure = {name: "Epicure", address: "75008 Paris", phone_number: "0721349875", category: "french", rating: 3, content:"Amazing dessert"}
happy_lamb = {name: "Happy Lamb", address: "SE45 3FQ London", phone_number: "0751200987", category: "chinese", rating: 5, content: "Great hotpot restaurant" }
shoryu = {name: "shoryu", address: "SW1Y 4LR London", phone_number: "0751209834", category: "japanese", rating: 2, content: "Long waiting time"}


[dovetail, pizza_east, epicure, happy_lamb, shoryu].each do |attributes|
  restaurant = Restaurant.create!(name: attributes[:name], address: attributes[:address], phone_number: attributes[:phone_number], category: attributes[:category])
  restaurant.reviews.create!(rating: attributes[:rating], content: attributes[:content])
  puts "Created #{restaurant.name} with a rating of #{attributes[:rating].to_i}"
end
