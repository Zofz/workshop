class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.references :storage_spot, index: true
      t.references :machine, index: true
      t.datetime :taken_out

      t.timestamps
    end
  end
end
