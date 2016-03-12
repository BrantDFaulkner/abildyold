# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

statuses = ["Request Pending", "Accepted", "Declined", "Removed"]
categories = ["fitness", "social", "education"]

User.create!(email: "test@test.com", password: "password")
Goal.create!(title: "This is my goal title.", description: "This is my goal description", status: statuses.sample, category: categories.sample)
Participation.create!(goal_id: 1, user_id: 1, status: "Creator")

100.times do
  user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
  goal = Goal.create!(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, status: statuses.sample, category: categories.sample)
  Participation.create!(goal_id: goal.id, user_id: user.id, status: "Creator")
end

def create_pending_request(n)
  user_id = 10
  n.times do
    Participation.create!(goal_id: 1, user_id: user_id, status: "Request Pending")
  user_id += 1
  end
end

create_pending_request(5)



