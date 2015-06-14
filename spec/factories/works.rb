FactoryGirl.define do
  factory :work do
    machine
    pickup_at { Time.zone.now + 1.days }
    done_at { Time.zone.now + 5.days }
    notification :text
  end
end
