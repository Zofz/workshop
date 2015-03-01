class StorageShelf < ActiveRecord::Base
  belongs_to :storage_room
  has_many :storage_spots
end
