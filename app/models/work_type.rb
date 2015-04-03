class WorkType < ActiveRecord::Base
  # Models and work_types
  has_many :model_work_types
  has_many :machine_models, through: :model_work_types

  #
  has_many :part_work_types
  has_many :parts, through: :part_work_types
  # Which can be chosen.
  has_many :work_activities
end
