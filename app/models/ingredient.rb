class Ingredient < ApplicationRecord
  belongs_to :product
  belongs_to :technological_map

  validates :quantity, numericality: { greater_than: 0 }
end
