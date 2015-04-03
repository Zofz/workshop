class CreatePartWorkTypes < ActiveRecord::Migration
  def change
    create_table :part_work_types do |t|
      t.references :part, index: true
      t.references :work_type, index: true

      t.timestamps null: false
    end
  end
end
