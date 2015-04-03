class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title, null: false, unique: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_index :roles, :title
  end
end
