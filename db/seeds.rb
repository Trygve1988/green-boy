# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Task.delete_all
Task.create!(name: 'Turn of the lights')
Task.create!(name: 'Take a short shower')
Task.create!(name: 'Bike to school/work')

User.delete_all
User.create!(username: 'trygve', password: '123')