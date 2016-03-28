class MessageThread < ActiveRecord::Base
  has_many :message_thread_users
  has_many :users, through: :message_thread_users
  has_many :messages


end
