FactoryGirl.define do
  factory :user do
    email
    password
    firstname
    lastname
    phone

    after(:create) do |user|
      create(:address, user: user)
    end
  end

end
