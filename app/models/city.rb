class City < ActiveRecord::Base
  has_many :addresses

  validates :postal_title, :postal_code, presence: true
  validates :postal_code, uniqueness: true

  def to_s
    %(#{postal_code} #{postal_title})
  end
end
