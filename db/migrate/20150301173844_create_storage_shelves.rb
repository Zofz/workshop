class CreateStorageShelves < ActiveRecord::Migration
  def change
    create_table :storage_shelves do |t|
      t.references :storage_room, index: true
      t.integer :level
      t.integer :row
      t.integer :column
      t.string :title

      t.timestamps
    end
  end
end
