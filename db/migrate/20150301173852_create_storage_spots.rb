class CreateStorageSpots < ActiveRecord::Migration
  def change
    create_table :storage_spots do |t|
      t.references :storage_shelf, index: true
      t.references :storage_room, index: true
      t.string :title

      t.timestamps
    end
  end
end
