class Brand < ActiveRecord::Base
  has_and_belongs_to_many :machine_types
  has_many :products
end
