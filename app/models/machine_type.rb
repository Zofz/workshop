class MachineType < ActiveRecord::Base

  has_many :products
  has_many :brands, through: :products

  validates :title, presence: true

  def to_s
    title
  end
end
