# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: "francisco@test.com", password: "123456", name: "Francisco")
User.create(email: "omar@test.com", password: "123456", name: "Omar")
User.create(email: "fabrizio@test.com", password: "123456", name: "Fabrizio")

Recipe.create(name: "Pizza", preparation_time: 100, cooking_time: 20, description: "Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients.", public: false, user_id: 1)
Recipe.create(name: "Feijoada", preparation_time: 10, cooking_time: 200, description: "Feijoada is a Brazilian dish of beef stewed with vegetables and meat, often with a meaty accompaniment of fish, or sometimes meat and fish, or sometimes meat and vegetables.", public: true, user_id: 2)
Recipe.create(name: "Pancakes", preparation_time: 150, cooking_time: 250, description: "Pancakes are a type of scrambled eggs, often served in a thick, batter form, but more often as a small, individual pancake. Pancakes are usually served with butter or jam, and may be cooked with milk, eggs, and other ingredients.", public: false, user_id: 2)
Recipe.create(name: "Sushi", preparation_time: 10, cooking_time: 20, description: "Sushi is a Japanese dish of raw fish, usually sashimi, that has been prepared in a variety of ways, including tempura, hand-rolling, and deep-frying.", public: true, user_id: 3)
Recipe.create(name: "Spaghetti", preparation_time: 10, cooking_time: 20, description: "Spaghetti is a type of pasta, typically a flat, dry, thin, round, or roundish, made from an unleavened dough of durum wheat flour, or sometimes a dough of durum wheat flour mixed with water or eggs, and formed into sheets or strings.", public: false, user_id: 3)
