class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :title, null: false, unique: true
      t.string :short
      t.string :url
      t.string :reseller_url
      t.timestamps
    end

    add_index :brands, :title
  end
end
