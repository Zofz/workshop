class CreateMachineModelWorkTypes < ActiveRecord::Migration
  def change
    create_table :machine_work_types do |t|
      t.references :machine_model, index: true
      t.references :work_type, index: true

      t.timestamps null: false
    end
  end
end
