class Drive < ActiveRecord::Base
  belongs_to :work
  belongs_to :address
  belongs_to :user
end
