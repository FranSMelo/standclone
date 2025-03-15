class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :vehicle_type
  belongs_to :segment
  belongs_to :fuel_type
  belongs_to :transmission
  belongs_to :condition
  has_many :vehicle_images, dependent: :destroy

  # Active Storage para múltiplas imagens
  has_many_attached :images

end