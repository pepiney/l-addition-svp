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
user3 = User.create!(email: "je@gmail.com", password: "123456")
puts "Customer creation"
Customer.create!(user: user1, last_name: "dupont", first_name: "jean", avatar: "https://vignette.wikia.nocookie.net/loisetclark/images/7/74/Clark_30.PNG/revision/latest?cb=20180703121739&path-prefix=fr")
Customer.create!(user: user2, last_name: "dupond", first_name: "pierre", avatar: "https://vignette.wikia.nocookie.net/loisetclark/images/7/74/Clark_30.PNG/revision/latest?cb=20180703121739&path-prefix=fr")
puts "Restaurant creation"
restaurant1 = Restaurant.create!(name: "La poule et le coq", address: "45 Rue Châteaubriand, 13007 Marseille", user: user3, photo: "https://media-cdn.tripadvisor.com/media/photo-s/17/75/3f/d1/restaurant-in-valkenswaard.jpg", description: "Restaurant Bistronomique")
restaurant2 = Restaurant.create!(name: "Chez Francis et Cabrel", address: "29 Rue Boudouresque, 13007 Marseille", user: user3, photo: "https://lh3.googleusercontent.com/gSOCe6-7mRShz414U1EIoTu7s1EFnBBwnwqx0FuHbsyGQL9Bi0IToLJkm3R7FQI8p4UPbD58kMdf9_gyOzXsxw=w850-h510-c", description: "Groupe live tout les jeudi soir")
Restaurant.create!(name: "Chez Dédé et Francine ", address: "1 Place Ernest Delibes, 13008 Marseille", user: user3, photo: "https://www.bonhomie.paris/img/uploads/2020/07/slide_floor_1140x640.jpg", description: "Restaurant de fruits de mer")
Restaurant.create!(name: "La fourchette à l'envers", address: "17 Rue des Braves, 13007 Marseille", user: user3, photo: "https://images.squarespace-cdn.com/content/v1/5c586a93e666691041d4827c/1554972723158-45MS2F1WPDBBQIM09GIQ/ke17ZwdGBToddI8pDm48kPTrHXgsMrSIMwe6YW3w1AZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k5fwC0WRNFJBIXiBeNI5fKTrY37saURwPBw8fO2esROAxn-RKSrlQamlL27g22X2A/2019+-03+Restaurant+La+Palme+d%27Or+%C2%A9J.+Kelagopian+%2815%29.jpg?format=2500w", description: "Restaurant familial")
Restaurant.create!(name: "La serpent sympa", address: "92 Rue du Rouet, 13008 Marseille", user: user3, photo: "https://res.cloudinary.com/tf-lab/image/upload/w_600,h_337,c_fill,g_auto:subject,q_auto,f_auto/restaurant/86a5d174-98ad-437d-b3c4-853a7ff0d838/ea2727a9-ed6b-456a-98c3-99cc4a0a5958.jpg", description: "Restaurant Japonais")
Restaurant.create!(name: "Sur la huchette", address: "36 Boulevard Charles Livon, 13007 Marseille", user: user3, photo: "https://dq5r178u4t83b.cloudfront.net/wp-content/uploads/sites/71/2018/11/22120344/Capture-d%E2%80%99%C3%A9cran-2018-11-22-%C3%A0-13.03.23.png", description: "FastFood vegan")
Restaurant.create!(name: "L'hirondelle coquine", address: "5 Avenue Camille Pelletan, 13003 Marseille", user: user3, photo: "https://www.frequence-sud.fr/admin/transfert/data/72152.jpg", description: "Spécialité aÏoli")
Restaurant.create!(name: "Une vie, un avis", address: "280 Chemin de la Madrague-Ville, 13015 Marseille", user: user3, photo: "https://d18dnr0ekxokj7.cloudfront.net/actualites-marseille/2018/07/restaurant-la-grotte-callelongue-500x335.jpg", description: "Restaurant de fruits de mer")
Restaurant.create!(name: "Sur la route des papilles", address: "16 Rue Fort du Sanctuaire, 13006 Marseille", user: user3, photo: "http://www.l-epuisette.fr/wp-content/uploads/2014/08/top-accueil-1.jpg", description: "Terrasse de 200m2")
Restaurant.create!(name: "L'homme et la mer", address: "136-142 Rue du Vallon des Auffes, 13007 Marseille", user: user3, photo: "https://www.restaurantpiu.fr/public/img/big/5D377561600x1200jpg_5f07406b5ae0a.jpg", description: "Arrivage quotidien de poisson frais")
puts "Meal creation"
Meal.create!(meal_type: "Entrée", meal_name: "Tartare de thon", price: 10.50, restaurant: restaurant1)
Meal.create!(meal_type: "Entrée", meal_name: "Panisses", price: 4.00, restaurant: restaurant1)
Meal.create!(meal_type: "Entrée", meal_name: "Salade grecque", price: 9.50, restaurant: restaurant1)
Meal.create!(meal_type: "Plat Principal", meal_name: "Soupe de Poisson spéciale", price: 24.00, restaurant: restaurant1)
Meal.create!(meal_type: "Plat Principal", meal_name: "Pâte Carbonara", price: 14.50, restaurant: restaurant1)
Meal.create!(meal_type: "Plat Principal", meal_name: "Pizza Figatelli", price: 14.50, restaurant: restaurant1)
Meal.create!(meal_type: "Boissons", meal_name: "Leffe 25cl", price: 3.50, restaurant: restaurant1)
Meal.create!(meal_type: "Boissons", meal_name: "Evian 50cl", price: 3.50, restaurant: restaurant1)
Meal.create!(meal_type: "Dessert", meal_name: "Ile flottante", price: 5.50, restaurant: restaurant1)
Meal.create!(meal_type: "Dessert", meal_name: "Moelleux chocolat", price: 4.50, restaurant: restaurant1)
Meal.create!(meal_type: "Entrée", meal_name: "Soupe du jour", price: 7.50, restaurant: restaurant2)
Meal.create!(meal_type: "Entrée", meal_name: "Tapas à partager", price: 12.00, restaurant: restaurant2)
Meal.create!(meal_type: "Entrée", meal_name: "Melon", price: 5.50, restaurant: restaurant2)
Meal.create!(meal_type: "Plat Principal", meal_name: "Roti de porc à la moutarde", price: 18.50, restaurant: restaurant2)
Meal.create!(meal_type: "Plat Principal", meal_name: "Blanquette de veau", price: 14.50, restaurant: restaurant2)
Meal.create!(meal_type: "Boissons", meal_name: "Biere pression", price: 3.00, restaurant: restaurant2)
Meal.create!(meal_type: "Boissons", meal_name: "Vin rouge au verre", price: 3.50, restaurant: restaurant2)
Meal.create!(meal_type: "Dessert", meal_name: "Délices de Cabrel", price: 5.00, restaurant: restaurant2)
Meal.create!(meal_type: "Dessert", meal_name: "Tarte Tatin et sa glace vanille", price: 6.50, restaurant: restaurant2)
puts "Table creation"
Table.create!(restaurant: restaurant1, table_number: 100)
Table.create!(restaurant: restaurant1, table_number: 101)
Table.create!(restaurant: restaurant1, table_number: 102)
Table.create!(restaurant: restaurant1, table_number: 103)
Table.create!(restaurant: restaurant1, table_number: 104)
Table.create!(restaurant: restaurant2, table_number: 200)
Table.create!(restaurant: restaurant2, table_number: 201)
Table.create!(restaurant: restaurant2, table_number: 202)
Table.create!(restaurant: restaurant2, table_number: 203)
Table.create!(restaurant: restaurant2, table_number: 204)
