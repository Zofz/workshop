class StorageSpot < ActiveRecord::Base
  belongs_to :storage_shelf
  belongs_to :storage_room
  has_many :storages
end
