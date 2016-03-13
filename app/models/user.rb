class User < ActiveRecord::Base
  has_many :leaderships, class_name: "Goal", foreign_key: :leader_id
  has_many :participations
  has_many :goals, through: :participations
  has_many :requests

  # scope :pending_request, -> { where() }

  def goal_requested?(goal_id)
    requests.map(&:goal_id).include?(goal_id)
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, uniqueness: true
end
