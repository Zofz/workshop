class Part < ActiveRecord::Base
  has_and_belongs_to_many :machines
  has_and_belongs_to_many :machine_types
  has_and_belongs_to_many :work_types
  has_and_belongs_to_many :work_parts
end
