class WorkType < ActiveRecord::Base
  validate :title, presence: true, uniqueness: true
end
