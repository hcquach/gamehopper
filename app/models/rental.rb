class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :start_date, :end_date, presence: true
  validate :date_is_possible?

  def date_is_possible?
    return if [start_date.blank?, end_date.blank?].any?
    if  start_date > end_date
    end

  end
end
