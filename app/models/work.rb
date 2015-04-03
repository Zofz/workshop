class Work < ActiveRecord::Base
  has_paper_trail

  belongs_to :machine
  has_many :work_activities
  has_many :work_parts, through: :work_activities
  has_many :workers, class_name: :User, foreign_key: :user_id, through: :work_activities
  has_many :drives
  has_one :storage
end
