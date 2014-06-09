class CreateFurniture < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :description
      t.references :rooms, index: true

      t.timestamps
    end
  end
end
