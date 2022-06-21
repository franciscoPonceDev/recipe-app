# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: "fran@test.com", password: "123456", name: "Fran")

Recipe.create(name: "Pizza", preparation_time: 10, cooking_time: 20, description: "Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients.", public: false, user_id: 1)
Recipe.create(name: "Feijoada", preparation_time: 10, cooking_time: 20, description: "Feijoada is a Brazilian dish of beef stewed with vegetables and meat, often with a meaty accompaniment of fish, or sometimes meat and fish, or sometimes meat and vegetables.", public: true, user_id: 1)