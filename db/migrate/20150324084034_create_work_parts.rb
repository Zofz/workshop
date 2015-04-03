class CreateWorkParts < ActiveRecord::Migration
  def change
    create_table :work_parts do |t|
      t.references :part, index: true
      t.references :work_activity, index: true
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
