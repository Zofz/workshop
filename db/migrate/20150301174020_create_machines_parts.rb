class CreateMachinesParts < ActiveRecord::Migration
  def change
    create_table :machines_parts do |t|
      t.belongs_to :machine, index: true
      t.belongs_to :part, index: true
    end
  end
end
