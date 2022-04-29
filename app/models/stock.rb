class Stock < ApplicationRecord
  belongs_to :product

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  ZERO = 0.to_d

  class StockError < RuntimeError; end

  def increase_stock(value)
    raise StockError, 'value can''t be negative' if value <= ZERO
    update_columns(quantity: quantity + value)
    self
  end

  def decrease_stock(value)
    raise StockError, 'value can''t be negative' if value <= ZERO
    raise StockError, 'negative stock quantity' if quantity < value
    update_columns(quantity: quantity - value)
    self
  end
end
