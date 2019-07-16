class Babysitter < ApplicationRecord
  belongs_to :user

  validates :biography, :birthdate, :price_per_hour, presence: true
end
