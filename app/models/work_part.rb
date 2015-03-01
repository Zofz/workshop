class WorkPart < ActiveRecord::Base
  belongs_to :work
  belongs_to :work_type
  belongs_to :user
  has_and_belongs_to_many :parts
end
