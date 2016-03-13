class Request < ActiveRecord::Base
  VALID_STATUS = ['Accepted', 'Pending', 'Declined']
  belongs_to :user
  belongs_to :goal

  before_create :set_status
  validate :status_values, on: :update
  scope :pending, -> { where(status: 'Pending') }


  private
    def set_status
      self.status = "Pending"
    end

    def status_values
      errors.add(:status, 'is not valid status') unless VALID_STATUS.include?(self.status)
    end
end
