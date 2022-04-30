class Product < ApplicationRecord
  has_one :stock
  has_many :ingredients

  validates :name, presence: true
end
