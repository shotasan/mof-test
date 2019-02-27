class ClosetStation < ApplicationRecord
  validates :route, :station, :walk_time, presence: true
  # inverse_ofでpropetyとcloset_stationを同時に作成する際にpropety_idがバリデーションで弾かれなくなる
  belongs_to :property, inverse_of: :closet_stations
  
end
