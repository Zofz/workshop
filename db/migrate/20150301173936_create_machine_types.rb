class CreateMachineTypes < ActiveRecord::Migration
  def change
    create_table :machine_types do |t|
      t.string :title, null: false, unique: true
      t.string :short
      t.text :comment

      t.timestamps
    end
  end
end
