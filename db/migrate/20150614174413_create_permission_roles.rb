class CreatePermissionRoles < ActiveRecord::Migration
  def change
    create_table :permission_roles do |t|
      t.references :permission, index: true
      t.references :role, index: true

      t.timestamps null: false
    end
  end
end
