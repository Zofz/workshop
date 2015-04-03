class Brand < ActiveRecord::Base
  has_many :machine_models
  has_many :machine_types, through: :machine_models
  has_many :products, through: :machine_models
  has_many :parts, through: :machine_models
end
