FactoryGirl.define do
  sequence(:access_code) { (0...15).map { (65 + rand(26)).chr }.join.to_s }
  sequence(:description) { |n| "This describes the most impressive nr#{n}" }
  sequence(:email) { |n| "d.wessman#{n}@fsektionen.se" }
  sequence(:lastname) { |n| "Wessman#{n}" }
  sequence(:name) { |n| "David#{n}" }
  sequence(:phone) { |n| "042#{n}606122" }
  sequence(:cellphone) { |n| "070#{n}606122" }
  sequence(:stil_id) { |n| "tfy54dw#{n}" }
  sequence(:title) { |n| "Titel#{n}" }
  sequence(:url) { |n| "url#{n}" }
  sequence(:username) { |n| "davidwessman#{n}" }
  sequence(:value) { |n| "david#{n}" }
  sequence(:location) { ['MH:A', 'Hilbert', 'Kårhuset', 'Ön-ön', 'Sjönsjön', 'Bastun'].sample }


  sequence(:company_name) { |n| "Cooling#{n} AB" }
  sequence(:org_nbr) { |n| "192623#{n}323" }

  sequence(:street) { |n| "Briggvägen #{n}" }
  sequence(:postal_code) { |n| "226 #{n}" }

  sequence(:serial_number) { |n| "1926-1234-33#{n}" }
  sequence(:order_number) { |n| "1926-1234-33#{n}" }
  sequence(:product_number) { |n| "2200-3231-12#{n}" }
  sequence(:engine_number) { |n| "9953-2535-12#{n}" }
  sequence(:deck_number) { |n| "226 #{n}" }

  sequence(:stock) { Random.new.rand(5..500) }
  sequence(:price) { Random.new.rand(5..500) }
  sequence(:barcode) { |n| "750103#{n}31130" }

  sequence(:add_number) { |n| " nr.#{n}" }

  sequence(:storage_nbr) { |n| "Storage nr.#{n}" }
  sequence(:shelf_nbr) { |n| "Shelf nr.#{n}" }
  sequence(:spot_nbr) { |n| "Spot nr.#{n}" }

end
