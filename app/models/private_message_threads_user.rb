class PrivateMessageThreadsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :private_message_thread
end
