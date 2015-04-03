class CreateWorkActivities < ActiveRecord::Migration
  def change
    create_table :work_activity do |t|
      t.references :work, index: true
      t.references :work_type, index: true
      t.references :user, index: true
      t.datetime :started_at
      t.datetime :finished_at
      t.boolean :done


      t.timestamps
    end
  end
end
