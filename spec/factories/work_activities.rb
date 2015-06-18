FactoryGirl.define do
  factory :work_activity do
    work
    work_type

    trait :done do
      finished_at { Time.zone.now }
    end

    trait :assigned do
      user
    end
  end
end
