class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :machine_model, index: true
      t.string :product_number
      t.string :order_number

      t.timestamps
    end
  end
end
