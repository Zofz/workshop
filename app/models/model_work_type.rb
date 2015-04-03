class ModelWorkType < ActiveRecord::Base
  # Join model between machine_models and work_types
  belongs_to :machine_model
  belongs_to :work_type
end
