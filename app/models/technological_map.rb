class TechnologicalMap < ApplicationRecord
  belongs_to :dish
  has_many :ingredients

  validates_associated :ingredients
end
