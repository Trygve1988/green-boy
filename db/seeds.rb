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

Task.create!(id: 1, name: 'Turn of the lights', logo: 'light')
Task.create!(id: 2, name: 'Take a short shower', logo: 'shower', points: 20)
Task.create!(id: 3, name: 'Walk or bike to school/work', logo: 'directions_walk',points: 40)
Task.create!(id: 4, name: 'Use public transport', logo: 'directions_bus',points: 30)
Task.create!(id: 5, name: 'Use a reusable shopping bag', logo: 'recycling')
Task.create!(id: 6, name: 'Eat a vegan meal', logo: 'restaurant_menu', points: 20)
Task.create!(id: 7, name: 'Plant a food plant', logo: 'grass', points: 20)
Task.create!(id: 8, name: 'Use a compost bin', logo: 'compost', points: 20)

User.create!(id: 1, username: 'test_user', password: '123')

UserTask.create!(id: 1, user_id: 1, task_id: 1)
UserTask.create!(id: 2, user_id: 1, task_id: 2)
UserTask.create!(id: 3, user_id: 1, task_id: 3)
UserTask.create!(id: 4, user_id: 1, task_id: 4)
UserTask.create!(id: 5, user_id: 1, task_id: 5)
UserTask.create!(id: 6, user_id: 1, task_id: 6)
UserTask.create!(id: 7, user_id: 1, task_id: 7)
UserTask.create!(id: 8, user_id: 1, task_id: 8)