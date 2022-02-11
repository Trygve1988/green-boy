# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
UserTask.delete_all
Task.delete_all
User.delete_all

Task.create!(id: 1, name: 'Turn of the lights')
Task.create!(id: 2, name: 'Take a short shower')
Task.create!(id: 3, name: 'Bike to school/work')

User.create!(id: 1, username: 'trygve', password: '123')

UserTask.create!(id: 1, user_id: 1, task_id: 1)
UserTask.create!(id: 2, user_id: 1, task_id: 2)