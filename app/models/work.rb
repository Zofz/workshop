class Work < ActiveRecord::Base
  belongs_to :machine
  belongs_to :user
  has_many :drives
end
