class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :games
  has_many :rentals
  validates :username, :email, presence: true, uniqueness: true
  validates :address, presence: true

  # For geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
