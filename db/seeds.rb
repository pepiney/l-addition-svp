# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name: "La poule et le coq", address: "Boulevard Diego Maradona", user_id: 1)
Restaurant.create(name: "Chez Francis et Cabrel", address: "Boulevard des chutes lavie", user_id: 1)
Restaurant.create(name: "Chez Dédé et Francine ", address: "Avenue des cagoles", user_id: 1)
Restaurant.create(name: "La fourchette à l'envers", address: "Boulevard des Dames", user_id: 1)
Restaurant.create(name: "La serpent sympa", address: "Rue du bout du monde", user_id: 1)
Restaurant.create(name: "Sur la huchette", address: "Rue de la flûte traversière", user_id: 1)
Restaurant.create(name: "L'hirondelle coquine", address: "Rue du Boulevard", user_id: 1)
Restaurant.create(name: "Une vie, une avis", address: "La Casté", user_id: 1)
Restaurant.create(name: "Sur la routes des papilles enchantées", address: "Cité fontvert", user_id: 1)
Restaurant.create(name: "L'homme et la mer", address: "Rue de la vague", user_id: 1)
User.create(email: "jo@gmail.com", password: "123456")
User.create(email: "ja@gmail.com", password: "123456")
Customer.create(user_id: 1, last_name: "dupont", first_name: "jean")
Meal.create(meal_type: "Entrée", meal_name: "Tartare de thon", price: 17.50, restaurant_id: 3)
Meal.create(meal_type: "Plat Principal", meal_name: "Soupe de Poisson spéciale", price: 47.00, restaurant_id: 3)
Meal.create(meal_type: "Plat Principal", meal_name: "Pâte Carbo façon bolo", price: 14.50, restaurant_id: 3)
Meal.create(meal_type: "Boissons", meal_name: "Leffe 25cl", price: 3.50, restaurant_id: 3)
Meal.create(meal_type: "Dessert", meal_name: "Tartare de thon", price: 17.50, restaurant_id: 3)
