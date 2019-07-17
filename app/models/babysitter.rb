class Babysitter < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :biography, :birthdate, :price_per_hour, presence: true

  scope :geocoded, -> { joins(:user).where.not(users: { latitude: nil, longitude: nil }) }

  def age
    (Time.zone.today - birthdate).to_i / 365
  end

  def stars
    if average_rating == 0
      '<i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 1
      '<i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 2
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 3
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 4
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 5
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>'.html_safe
    end
  end

  def average_rating
    ratings = []
    bookings = Booking.where(babysitter_id: id)
    bookings.each do |booking|
      ratings << Review.find_by(booking_id: booking.id).rating if Review.exists?(booking_id: booking.id)
    end
    ratings.sum / ratings.count
  end
end
