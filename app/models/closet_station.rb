class ClosetStation < ApplicationRecord
  belongs_to :property, inverse_of: :closet_stations
end
