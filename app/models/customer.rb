class Customer < ActiveRecord::Base
  has_paper_trail

  belongs_to :company

  has_many :machines
  has_many :machine_models, through: :machines
  has_many :addresses
  has_many :works, through: :machines
  has_many :storages, through: :works
end
