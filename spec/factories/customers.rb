FactoryGirl.define do
  factory :customer do
    name
    lastname
    cellphone
    phone
    email
    after(:create) do |customer|
      create(:address,customer: customer)
    end
    trait :w_company do
      company true
      company_name
      org_nbr
    end
  end
end
