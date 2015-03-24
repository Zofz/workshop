FactoryGirl.define do
  factory :storage do
    storage_spot
    machine
    taken_out { Time.zone.now }
  end

end
