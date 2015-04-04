class Machine < ActiveRecord::Base
  has_paper_trail

  belongs_to :customer
  # It does belong to a machine_model through :product
  belongs_to :product
  #belongs_to :machine_model
  has_one :machine_model, through: :product
  has_many :works
  has_many :parts_used, class_name: :Part, foreign_key: :part_id, through: :works
  has_many :parts, through: :product

end
