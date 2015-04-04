class MachineModel < ActiveRecord::Base
  # T.ex. Husqvarna 305
  belongs_to :brand
  belongs_to :machine_type
  has_many :products
  has_many :machines
  has_many :model_work_types
  has_many :work_types, through: :model_work_types
  has_many :parts, through: :work_types
end
