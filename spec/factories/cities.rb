FactoryGirl.define do
  factory :city do
    postal_title "Test"
    title {['Nyhamnsläge','Arild','Mölle','Skäret','Brunnby'].sample}
    postal_code
  end

end
