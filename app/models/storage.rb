class Storage < ActiveRecord::Base
  belongs_to :storage_spot
  belongs_to :machine
end
