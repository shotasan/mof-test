class ClosetStation < ApplicationRecord
  validates :route, :station, :walk_time, presence: true
  belongs_to :property, inverse_of: :closet_stations, validate: true
end
