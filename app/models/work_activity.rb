class WorkActivity < ActiveRecord::Base

  belongs_to :work
  belongs_to :work_type
  belongs_to :worker, class_name: :User, foreign_key: :user_id
  has_many :work_parts
end
