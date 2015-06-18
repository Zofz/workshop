class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :postal_title
      t.string :title
      t.string :postal_code, unique: true

      t.timestamps
    end

    add_index :cities, :postal_code
  end
end
