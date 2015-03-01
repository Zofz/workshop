class Customer < ActiveRecord::Base
  has_many :machines
  has_many :addresses
end
