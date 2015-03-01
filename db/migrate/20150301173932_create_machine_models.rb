class CreateMachineModels < ActiveRecord::Migration
  def change
    create_table :machine_models do |t|
      t.references :brand, index: true
      t.references :machine_type, index: true

      t.timestamps
    end
  end
end
