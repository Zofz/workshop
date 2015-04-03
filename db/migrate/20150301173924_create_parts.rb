class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.boolean :on_order
      t.decimal :stock
      t.string  :product_nbr
      t.string  :order_nbr
      t.string  :bar_code
      t.decimal :price

      t.timestamps
    end
  end
end
