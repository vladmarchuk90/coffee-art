class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.belongs_to :product
      t.decimal :quantity, precision: 10, scale: 3
      t.timestamps
    end
  end
end
