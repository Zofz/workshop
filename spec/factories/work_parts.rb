FactoryGirl.define do
  factory :work_part do
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
