class Game < ApplicationRecord
  PLATFORMS = [ "PS4", "XBOX", "SWITCH" ]

  belongs_to :user
  has_many :rentals
  validates :title, :description, :platform, :available, presence: true
  validates :platform, inclusion: { in: PLATFORMS }
end
