class Product < ActiveRecord::Base
  has_many :parts
  belongs_to :machine_type
  belongs_to :brand

  validates :brand, :machine_type, :product_nbr,
    presence: true
end
