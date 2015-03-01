class StorageRoom < ActiveRecord::Base
  has_many :storage_shelves
  has_many :storage_spots
end
