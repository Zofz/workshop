FactoryGirl.define do
  sequence(:access_code) { (0...15).map { (65 + rand(26)).chr }.join.to_s }
  sequence(:comment) { |n| "This describes the most impressive nr#{n}" }
  sequence(:email) { |n| "d.wessman#{n}@fsektionen.se" }
  sequence(:lastname) { |n| "Wessman#{n}" }
  sequence(:firstname) { |n| "David#{n}" }
  sequence(:phone) { |n| "042#{n}606122" }
  sequence(:cellphone) { |n| "070#{n}606122" }
  sequence(:stil_id) { |n| "tfy54dw#{n}" }
  sequence(:title) { |n| "Titel#{n}" }
  sequence(:short) { |n| "short-titel#{n}" }
  sequence(:url) { |n| "url#{n}" }
  sequence(:username) { |n| "davidwessman#{n}" }
  sequence(:password) { |n| "12030283sds#{n}" }
  sequence(:location) { ['MH:A', 'Hilbert', 'Kårhuset', 'Ön-ön', 'Sjönsjön', 'Bastun'].sample }


  sequence(:company_name) { |n| "Cooling#{n} AB" }
  sequence(:org_nbr) { |n| "192623#{n}323" }

  sequence(:street) { |n| "Briggvägen #{n}" }
  sequence(:postal_code) { |n| "226 #{n}" }

  sequence(:serial_nbr) { |n| "1926-1234-33#{n}" }
  sequence(:order_nbr) { |n| "1926-1234-33#{n}" }
  sequence(:product_nbr) { |n| "2200-3231-12#{n}" }
  sequence(:engine_nbr) { |n| "9953-2535-12#{n}" }
  sequence(:deck_nbr) { |n| "226 #{n}" }

  sequence(:stock) { Random.new.rand(5..500) }
  sequence(:price) { Random.new.rand(5..500) }
  sequence(:bar_code) { |n| "750103#{n}31130" }

  sequence(:add_number) { |n| " nr.#{n}" }

  sequence(:storage_nbr) { |n| "Storage nr.#{n}" }
  sequence(:shelf_nbr) { |n| "Shelf nr.#{n}" }
  sequence(:spot_nbr) { |n| "Spot nr.#{n}" }

  sequence(:description) { |n| "En fin liten beskrivande text av en #{n}" }

end
