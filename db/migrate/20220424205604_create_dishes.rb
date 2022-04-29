class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.belongs_to :menu
      t.string :name
      t.text :description
      t.integer :type
      t.decimal :price, precision: 15, scale: 2
      t.timestamps
    end
  end
end
