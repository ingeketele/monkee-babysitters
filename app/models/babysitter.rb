class Babysitter < ApplicationRecord
  include Geocoder

  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :biography, :birthdate, :price_per_hour, presence: true

  # scope :geocoded, -> { joins(:user).where.not(users: { latitude: nil, longitude: nil }) }

  after_validation :set_coordinates, on: :create

  delegate :address, to: :user
  delegate :first_name, to: :user
  delegate :last_name, to: :user

  geocoded_by :address

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(query)
    joins(:user).where("users.first_name ILIKE :query OR users.last_name ILIKE :query", query: "#{query}%")
  end

  def age
    (Time.zone.today - birthdate).to_i / 365
  end

  def stars

    if average_rating == 0
      '<i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 1
      '<i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 2
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 3
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 4
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>'.html_safe
    elsif average_rating == 5
      '<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>'.html_safe
    else average_rating = "no ratings yet"
      "(no ratings yet)"
    end
  end

  def average_rating
    ratings = []
    bookings = Booking.where(babysitter_id: id)
    bookings.each do |booking|
      ratings << Review.find_by(booking_id: booking.id).rating if Review.exists?(booking_id: booking.id)
    end
    if ratings.empty? || ratings.nil?

      "no ratings yet"
    else
      ratings.sum / ratings.count
    end
  end

  private

  def set_coordinates
    self.latitude = user.latitude
    self.longitude = user.longitude
  end
end
