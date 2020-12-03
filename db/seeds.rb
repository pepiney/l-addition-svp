# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Table.destroy_all
Restaurant.destroy_all
Customer.destroy_all
Meal.destroy_all
User.destroy_all
puts "User creation"
user1 = User.create!(email: "jo@gmail.com", password: "123456")
user2 = User.create!(email: "ja@gmail.com", password: "123456")
puts "Customer creation"
Customer.create!(user: user1, last_name: "dupont", first_name: "jean", avatar: "https://vignette.wikia.nocookie.net/loisetclark/images/7/74/Clark_30.PNG/revision/latest?cb=20180703121739&path-prefix=fr")
puts "Restaurant creation"
restaurant1 = Restaurant.create!(name: "La poule et le coq", address: "Boulevard Diego Maradona", user: user1, photo: "https://media.istockphoto.com/photos/beautiful-rooster-picture-id505294198?k=6&m=505294198&s=612x612&w=0&h=sUXwPS5l40dIHKbOxI__d0Ffh6KoPREIJ-0nKbcJ4Jg=", description: "On est un super resto les gars ho venez on a des poules des coqs et des poulettes")
Restaurant.create!(name: "Chez Francis et Cabrel", address: "Boulevard des chutes lavie", user: user1)
Restaurant.create!(name: "Chez Dédé et Francine ", address: "Avenue des cagoles", user: user1)
Restaurant.create!(name: "La fourchette à l'envers", address: "Boulevard des Dames", user: user1)
Restaurant.create!(name: "La serpent sympa", address: "Rue du bout du monde", user: user1)
Restaurant.create!(name: "Sur la huchette", address: "Rue de la flûte traversière", user: user1)
Restaurant.create!(name: "L'hirondelle coquine", address: "Rue du Boulevard", user: user1)
Restaurant.create!(name: "Une vie, une avis", address: "La Casté", user: user1)
Restaurant.create!(name: "Sur la routes des papilles enchantées", address: "Cité fontvert", user: user1)
Restaurant.create!(name: "L'homme et la mer", address: "Rue de la vague", user: user1)
puts "Meal creation"
Meal.create!(meal_type: "Entrée", meal_name: "Tartare de thon", price: 17.50, restaurant: restaurant1)
Meal.create!(meal_type: "Plat Principal", meal_name: "Soupe de Poisson spéciale", price: 47.00, restaurant: restaurant1)
Meal.create!(meal_type: "Plat Principal", meal_name: "Pâte Carbo façon bolo", price: 14.50, restaurant: restaurant1)
Meal.create!(meal_type: "Boissons", meal_name: "Leffe 25cl", price: 3.50, restaurant: restaurant1)
Meal.create!(meal_type: "Dessert", meal_name: "Tartare de thon", price: 17.50, restaurant: restaurant1)
puts "Table creation"
Table.create!(restaurant: restaurant1, table_number: 100)
Table.create!(restaurant: restaurant1, table_number: 200)
Table.create!(restaurant: restaurant1, table_number: 300)
Table.create!(restaurant: restaurant1, table_number: 400)
Table.create!(restaurant: restaurant1, table_number: 500)
Order.create!(meal_id:1, reservation_id:2)
