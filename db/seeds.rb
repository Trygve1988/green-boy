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
Task.create!(id: 2, name: 'Take a short shower', points: 20)
Task.create!(id: 3, name: 'Bike to school/work', points: 40)
Task.create!(id: 4, name: 'Use a reusable shopping bag')
Task.create!(id: 5, name: 'Eat a vegan meal', points: 20)

User.create!(id: 1, username: 'test_user', password: '123')

UserTask.create!(id: 1, user_id: 1, task_id: 1)
UserTask.create!(id: 2, user_id: 1, task_id: 2)
UserTask.create!(id: 3, user_id: 1, task_id: 3)
UserTask.create!(id: 4, user_id: 1, task_id: 4)
UserTask.create!(id: 5, user_id: 1, task_id: 5)