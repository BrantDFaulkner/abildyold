class PrivateMessageState < ActiveRecord::Base
  belongs_to :private_messag
  belongs_to :user
end
