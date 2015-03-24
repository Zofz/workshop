FactoryGirl.define do
  factory :work_type do
    title {%(WorkTyp #{generate(:add_number)})}
    comment
  end
end
