class MachineType < ActiveRecord::Base

  has_many :machine_models
  has_many :brands, through: :machine_models

  has_many :work_types, through: :machine_models
  has_many :parts, through: :machine_models

  validates :title, :short, presence: true
  validates :short, uniqueness: true

  def to_s
    title
  end
end
