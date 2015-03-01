class CreateMachineTypes < ActiveRecord::Migration
  def change
    create_table :machine_types do |t|
      t.references :machine, index: true

      t.timestamps
    end
  end
end
