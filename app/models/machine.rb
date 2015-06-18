class Machine < ActiveRecord::Base
  has_paper_trail

  belongs_to :customer
  belongs_to :product

  has_many :works
  has_many :parts_used, class_name: :Part, foreign_key: :part_id, through: :works
  has_many :parts, through: :product

  validates :customer, :product, presence: true
end
