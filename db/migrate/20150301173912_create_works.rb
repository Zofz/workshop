class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :machine, index: true
      t.datetime :done_at
      t.datetime :pickup_at
      t.string :notification
      t.boolean :finished
      t.boolean :invoiced
      t.string :invoice_nbr
      t.references :user, index: true

      t.timestamps
    end
  end
end
