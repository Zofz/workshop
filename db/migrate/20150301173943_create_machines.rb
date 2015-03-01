class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.references :customer, index: true
      t.string :old_id
      t.string :serial_nbr
      t.references :product, index: true
      t.date :manufactured
      t.string :engine_nbr
      t.string :deck_nbr
      t.string :old_id

      t.timestamps
    end
  end
end
