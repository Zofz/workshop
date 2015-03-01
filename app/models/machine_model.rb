class MachineModel < ActiveRecord::Base
  belongs_to :brand
  belongs_to :machine_type
  has_many :products
end
