class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :org_nbr
      t.text :comment

      t.timestamps null: false
    end
  end
end
