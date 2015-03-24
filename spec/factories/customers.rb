FactoryGirl.define do
  factory :customer do
    name
    lastname
    cellphone
    phone
    email

    trait :w_company do
      company true
      company_name
      org_nbr
    end
  end
end
