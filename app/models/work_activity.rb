class WorkActivity < ActiveRecord::Base

  belongs_to :work
  belongs_to :work_type
  belongs_to :user
  has_many :work_parts
end
