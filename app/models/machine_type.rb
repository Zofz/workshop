class MachineType < ActiveRecord::Base
  belongs_to :machine
  has_and_belongs_to_many :brands
  has_many :machines
  has_and_belongs_to_many :work_types
  has_and_belongs_to_many :parts
end
