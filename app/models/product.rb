class Product < ActiveRecord::Base
  # The same :machine_model could have several products.
  # They do change the product_number and manufacturing year
  belongs_to :machine_model
  has_many :parts, through: :machine_model
  has_one :brand, through: :machine_model
end
