class CreateMachineTypesParts < ActiveRecord::Migration
  def change
    create_table :machine_types_parts do |t|
      t.belongs_to :machine_type, index: true
      t.belongs_to :part, index: true
    end
  end
end
