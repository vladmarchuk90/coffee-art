class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.belongs_to :technological_map
      t.belongs_to :product
      t.decimal :quantity, precision: 10, scale: 3
      t.timestamps
    end
  end
end
