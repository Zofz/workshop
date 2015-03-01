class CreateBrandsMachineTypes < ActiveRecord::Migration
  def change
    create_table :brands_machine_types do |t|
      t.belongs_to :brand, index: true
      t.belongs_to :machine_type, index: true
    end
  end
end
