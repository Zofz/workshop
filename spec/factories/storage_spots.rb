FactoryGirl.define do
  factory :storage_spot do
    storage_shelf
    storage_room
    title { %(Storage spot #{generate(:spot_nbr)}) }
  end

end
