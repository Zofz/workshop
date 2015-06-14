class PartWorkType < ActiveRecord::Base
  belongs_to :part
  belongs_to :work_type
end
