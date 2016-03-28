# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

statuses = ["Request Pending", "Accepted", "Declined", "Removed"]
categories = ["fitness", "social", "education"]

puts "Creating test@test.com => password"
User.create!(username: "TestTest", email: "test@test.com", password: "password")
Goal.create!(leader_id: 1, title: "This is my goal title.", description: "This is my goal description", status: statuses.sample, category: categories.sample)
Participation.create!(goal_id: 1, user_id: 1, status: "Creator")

20.times do
  user = User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password)
  goal = Goal.create!(title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, status: statuses.sample, category: categories.sample)
  Participation.create!(goal_id: goal.id, user_id: user.id, status: "Creator")
end

def create_pending_request(n)
  user_id = 10
  n.times do
    Request.create!(goal_id: 1, user_id: user_id)
  user_id += 1
  end
end

def create_private_messages(n)
  user_id = 10
  n.times do
    user = User.find(user_id)
    mt = MessageThread.create!
    MessageThreadUser.create!(message_thread_id: mt.id, user_id: 1)
    MessageThreadUser.create!(message_thread_id: mt.id, user_id: user.id)
    user.messages.create!(message_thread_id: mt.id, content: Faker::Lorem.paragraph)
    user_id += 1
  end

end

create_pending_request(5)
create_private_messages(5)




