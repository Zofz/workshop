FactoryGirl.define do
  factory :customer do
    firstname
    lastname
    cellphone
    phone
    email
    after(:create) do |customer|
      create(:address, customer: customer)
    end
    trait :w_company do
      company
    end
  end
end
