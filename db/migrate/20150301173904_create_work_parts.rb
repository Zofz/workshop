class CreateWorkParts < ActiveRecord::Migration
  def change
    create_table :work_parts do |t|
      t.references :work, index: true
      t.references :work_type, index: true
      t.boolean :finished
      t.references :user, index: true

      t.timestamps
    end
  end
end
