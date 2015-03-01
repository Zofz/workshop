class CreateMachineTypesWorkTypes < ActiveRecord::Migration
  def change
    create_table :machine_types_work_types do |t|
      t.belongs_to :machine_type, index: true
      t.belongs_to :work_type, index: true
    end
  end
end
