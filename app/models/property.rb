class Property < ApplicationRecord
  validates :name, :rent, :address, :building_age, :remarks,
            presence: true
  has_many :closet_stations, inverse_of: :property
  accepts_nested_attributes_for :closet_stations, limit: 2, allow_destroy: true, reject_if: :all_blank
end
