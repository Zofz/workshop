class CreatePartsWorkTypes < ActiveRecord::Migration
  def change
    create_table :parts_work_types do |t|
      t.belongs_to :part, index: true
      t.belongs_to :work_type, index: true
    end
  end
end
