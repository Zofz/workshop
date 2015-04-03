class AddUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.integer :role_id
    end
  end
end
