FactoryGirl.define do
  factory :storage_room do
    title { %(Storage room #{generate(:storage_nbr)}) }
  end

end
