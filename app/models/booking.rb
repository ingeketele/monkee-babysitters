class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :babysitter

  validates :start_time, :duration_per_hour, presence: true
end
