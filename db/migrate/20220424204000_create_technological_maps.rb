class CreateTechnologicalMaps < ActiveRecord::Migration[6.1]
  def change
    create_table :technological_maps do |t|
      t.string :name
      t.text :description
      t.belongs_to :dish
      t.timestamps
    end
  end
end
