class Address < ActiveRecord::Base
  belongs_to :customer
  belongs_to :user
  belongs_to :city
end
