class City < ActiveRecord::Base
  has_many :addresses

  validates :postal_title, :postal_code, presence: true
  validates :postal_code, uniqueness: true
end
