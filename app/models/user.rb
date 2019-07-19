class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :is_seeding

  has_one :babysitter, dependent: :destroy
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :should_geocode?

  private

  def should_geocode?
    will_save_change_to_address? && !is_seeding
  end
end
