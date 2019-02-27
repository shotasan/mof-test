class Property < ApplicationRecord
  validates :name, :rent, :address, :building_age, :remarks,
            presence: true
  has_many :closet_stations, dependent: :destroy, inverse_of: :property
  # limit 処理できる条件数 allow_destroy 同時に削除
  accepts_nested_attributes_for :closet_stations, limit: 2, allow_destroy: true
end
