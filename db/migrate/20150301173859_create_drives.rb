class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.references :work, index: true
      t.references :address, index: true
      t.text :comment
      t.datetime :date
      t.references :user, index: true

      t.timestamps
    end
  end
end
