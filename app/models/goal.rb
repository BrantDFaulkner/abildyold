class Goal < ActiveRecord::Base
  has_many :participations
  has_many :users, through: :participations

  def save_create_participation(goal, user_id)
    goal.save
    Participation.create(goal_id: goal.id, status: "Creator", user_id: user_id)
  end


end

