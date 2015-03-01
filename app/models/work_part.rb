class WorkPart < ActiveRecord::Base
  belongs_to :work
  belongs_to :work_type
  belongs_to :user
end
