class Customer < ActiveRecord::Base
  has_paper_trail

  belongs_to :company

  has_many :machines
  has_many :products, through: :machines
  has_many :addresses
  has_many :works, through: :machines
  has_many :storages, through: :works

  validates :firstname, presence: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  def to_s
    %(#{firstname} #{lastname})
  end
end
