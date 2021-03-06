# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "mojito")
Cocktail.create(name: "bloody Mary")
Cocktail.create(name: "sex on the beach")

Dose.create(description: "blabla", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "blabla2", cocktail_id: 2, ingredient_id: 1)
