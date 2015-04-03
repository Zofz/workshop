class WorkPart < ActiveRecord::Base
  belongs_to :part
  belongs_to :work_activity
end
