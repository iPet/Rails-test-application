class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :description
      t.references :houses, index: true

      t.timestamps
    end
  end
end
