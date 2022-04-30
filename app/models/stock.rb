class Stock < ApplicationRecord
  belongs_to :product

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  class StockError < RuntimeError; end

  def increase_stock(value)
    raise StockError, 'value can''t be negative' unless value.positive?
    update_columns(quantity: quantity + value)
    self
  end

  def decrease_stock(value)
    raise StockError, 'value can''t be negative' unless value.positive?
    raise StockError, 'negative stock quantity' if quantity < value
    update_columns(quantity: quantity - value)
    self
  end
end
