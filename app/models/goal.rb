class Goal < ActiveRecord::Base
  belongs_to :leader, class_name: "User"
  has_many :participations
  has_many :users, through: :participations
  has_many :requests


  def save_create_participation(goal, user_id)
    goal.save
    Participation.create(goal_id: goal.id, status: "Creator", user_id: user_id)
  end

  GOAL_CATEGORIES = [
    "Business/Career",
    "Education",
    "Health/Fitness",
    "Finance",
    "Personal Development",
    "Recreation",
    "Relationship",
    "Social",
    "Spiritual"
  ]


end#Goal


