FactoryGirl.define do
  factory :storage_shelf do
    storage_room
    level { rand(1..4) }
    row { rand(1..15) }
    column { rand(1..8) }
    title { %(Storage shelf #{generate(:shelf_nbr)}) }
  end

end
