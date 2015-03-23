class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
    add_column :users, :adress_id, :integer
  end
end
