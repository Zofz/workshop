FactoryGirl.define do
  factory :permission do
    name { generate(:firstname) }
    subject_class { generate(:short) }
    action { generate(:lastname) }
  end
end
