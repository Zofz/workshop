FactoryGirl.define do
  factory :machine do
    customer
    old_id { customer.old_id }
    serial_nbr
    product
    manufactured { Time.zone.now - 3.years }
    engine_nbr
    deck_nbr
  end
end
