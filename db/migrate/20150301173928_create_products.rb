class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :brand, index: true
      t.references :machine_type, index: true
      t.string :product_nbr
      t.string :order_nbr

      t.timestamps
    end
  end
end
