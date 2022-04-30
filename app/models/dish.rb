class Dish < ApplicationRecord
  belongs_to :menu
  has_one :technological_map

  validates :name, length: { minimum: 4 }
  validates :name, :description, presence: true
  validates :name, uniqueness: { scope: :menu, message: "should be unique in particular menu" }
  validates :price, numericality: { greater_than: 0 }

  enum type: { cookery: 0, bar: 1 }
end
