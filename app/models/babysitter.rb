class Babysitter < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :biography, :birthdate, :price_per_hour, presence: true

  def age
    (Time.zone.today - birthdate).to_i / 365
  end
end
