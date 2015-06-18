FactoryGirl.define do
  factory :part do
    stock
    product_nbr
    bar_code
    price

    trait :ordered do
      on_order true
    end
  end

end
