class Work < ActiveRecord::Base
  has_paper_trail

  belongs_to :machine
  has_many :work_activities
  has_many :work_parts, through: :work_activities
  has_many :users, through: :work_activities
  has_many :drives
  has_one :storage

  validates :machine, presence: true
end
