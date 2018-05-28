class Game < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  PLATFORMS = [ "PS4", "XBOX", "SWITCH" ]

  belongs_to :user
  has_many :rentals
  validates :title, :description, :platform, presence: true
  validates :platform, inclusion: { in: PLATFORMS }
end
