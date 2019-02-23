class Property < ApplicationRecord
  validates :name, :rent, :address, :building_age, :remarks,
            presence: true
end
