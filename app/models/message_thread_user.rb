class MessageThreadUser < ActiveRecord::Base
  belongs_to :message_thread
  belongs_to :user
end
