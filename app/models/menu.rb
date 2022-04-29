class Menu < ApplicationRecord
  has_many :dishes
  
  validates_associated :dishes
  validates :name, length: { minimum: 4 }
end
