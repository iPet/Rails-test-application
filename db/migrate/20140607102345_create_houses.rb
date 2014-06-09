class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
     
      t.references :users, index: true

      t.timestamps
    end
  end
end
