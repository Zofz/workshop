FactoryGirl.define do
  factory :work_activity do
    work
    work_type

    trait :done do
      finished true
    end

    trait :assigned do
      user
    end
  end
end
