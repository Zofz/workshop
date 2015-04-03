class MachineType < ActiveRecord::Base

  has_many :machine_models
  has_many :brands, through: :machine_models

  has_many :work_types, through: :machine_models
  has_many :parts, through: :machine_models
end
