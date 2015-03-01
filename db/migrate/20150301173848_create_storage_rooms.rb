class CreateStorageRooms < ActiveRecord::Migration
  def change
    create_table :storage_rooms do |t|
      t.string :title

      t.timestamps
    end
  end
end
