class Part < ActiveRecord::Base

  has_many :work_parts
  has_many :work_activities, through: :work_parts
  # Messy, create join models?
  has_many :works, through: :work_activities
  has_many :machines, through: :works
end
