class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :babysitter
  has_many :reviews, dependent: :destroy

  validates :start_time, :duration_per_hour, presence: true

  def end_time
    start_time + duration_per_hour.hours
  end
end
