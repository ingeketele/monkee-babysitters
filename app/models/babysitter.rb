class Babysitter < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def age
    (Time.zone.today - birthdate).to_i / 365
  end
end
