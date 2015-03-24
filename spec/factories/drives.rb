FactoryGirl.define do
  factory :drive do
    work
    address
    date { Time.zone.now + 3.days }
    user
  end

end
