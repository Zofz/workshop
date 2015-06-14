class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :cellphone
      t.string :phone
      t.string :email
      t.string :old_id
      t.integer :company_id
      t.text :comment

      t.timestamps
    end
  end
end
