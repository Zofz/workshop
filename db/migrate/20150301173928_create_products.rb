class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :machine_model, index: true
      t.string :product_nbr
      t.string :order_nbr

      t.timestamps
    end
  end
end
