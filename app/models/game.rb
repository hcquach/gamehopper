class Game < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  PLATFORMS = [ "PS4", "XBOX", "SWITCH" ]

  belongs_to :user
  has_many :rentals
  validates :title, :description, :platform, presence: true
  validates :platform, inclusion: { in: PLATFORMS }

   # include PgSearch
   # pg_search_scope :search_by_title_and_platform,
   #  against: [ :title => 'A', :platform => 'B' ],
   #  using: {
   #    tsearch: { prefix: true }
   #  }

end
