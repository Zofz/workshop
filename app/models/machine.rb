class Machine < ActiveRecord::Base
  has_paper_trail

  belongs_to :customer
  # It does belong to a machine_model through :product
  belongs_to :product
  #belongs_to :machine_model
  has_many :works
  has_many :parts_used, class_name: :Part, foreign_key: :part_id, through: :works
  has_many :parts, through: :product

  def self.new_path(customer, *)
    if customer.present?
      Rails.application.routes.url_helpers.new_machine_path(customer)
    else
      Rails.application.routes.url_helpers.new_machine_path
    end

  end

  def self.index_path
    Rails.application.routes.url_helpers.machines_path
  end
end
