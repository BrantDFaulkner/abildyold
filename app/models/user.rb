class User < ActiveRecord::Base
  has_many :leaderships, class_name: "Goal", foreign_key: :leader_id
  has_many :participations
  has_many :goals, through: :participations
  has_many :requests

  has_many :messages
  has_many :message_thread_users
  has_many :message_threads, through: :message_thread_users
  has_many :received_messages, through: :message_threads, source: :message



  # ActiveRecord::HasManyThroughSourceAssociationNotFoundError: Could not find the source association(s) "received_message" or :received_messages in model MessageThread. Try 'has_many :received_messages, :through => :message_threads, :source => <name>'. Is it one of message_thread_users?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, uniqueness: true

  def goal_requested?(goal_id)
    requests.map(&:goal_id).include?(goal_id)
  end

  def create_new_message_and_thread(receiver_id)
    message_thread = MessageThread.create
    message_thread.message_thread_users.create(user_id: receiver_id)
    self.message_thread_users.create(message_thread_id: message_thread.id)
    self.messages.new(message_thread_id: message_thread.id)
  end



end
