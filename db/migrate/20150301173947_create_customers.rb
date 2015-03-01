class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastname
      t.string :cellphone
      t.string :phone
      t.string :email
      t.string :old_id
      t.boolean :company
      t.string :company_name
      t.string :org_nbr
      t.text :comment

      t.timestamps
    end
  end
end
