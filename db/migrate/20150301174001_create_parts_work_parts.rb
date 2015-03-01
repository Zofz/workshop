class CreatePartsWorkParts < ActiveRecord::Migration
  def change
    create_table :parts_work_parts do |t|
      t.belongs_to :part, index: true
      t.belongs_to :work_part, index: true
    end
  end
end
