class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :postal_title
      t.string :title
      t.string :postal_code

      t.timestamps
    end
  end
end
