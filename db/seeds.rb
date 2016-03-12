# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

statuses = ["pending", "active", "innactive", "completed"]
categories = ["fitness", "social", "education"]

User.create!(email: "test@test.com", password: "password")
Goal.create!(title: "This is my goal title.", description: "This is my goal description", status: statuses.sample, category: categories.sample)
Participation.create!(goal_id: 1, user_id: 1, status: "creator")

100.times do
  user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
  goal = Goal.create!(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, status: statuses.sample, category: categories.sample)
  Participation.create!(goal_id: goal.id, user_id: user.id, status: "creator")
end



