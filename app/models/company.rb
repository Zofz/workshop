class Company < ActiveRecord::Base

  has_many :customers

  has_many :machines, through: :customers
  has_many :products, through: :machines
  has_many :addresses
  has_many :works, through: :machines
  has_many :storages, through: :works

  validates :title, presence: true

  def self.new_path(*)
    Rails.application.routes.url_helpers.new_company_path
  end

  def self.index_path
    Rails.application.routes.url_helpers.companies_path
  end
end
